// ignore_for_file: unused_local_variable

import 'package:drift/drift.dart' hide isNull, isNotNull;
import 'package:test/test.dart';

import '../generated/todos.dart';
import '../test_utils/test_utils.dart';

void main() {
  late TodoDb db;
  late List<StoreData> stores;
  late List<DepartmentData> departments;
  late List<ProductData> products;
  late List<int> listings;

  const departmentsData = [
    (name: "Electronics", id: 1),
    (name: "Clothing", id: 2),
    (name: "Books", id: 3)
  ];
  const productsData = [
    (name: "TV", department: 1, id: "1"),
    (name: "Shirt", department: 2, id: "2"),
    (name: "Book", department: 3, id: "3"),
    (name: "Another Book", department: 3, id: "4"),
  ];

  setUp(() async {
    db = TodoDb(testInMemoryDatabase());

    await db.managers.product.bulkCreate(
      (o) {
        return productsData.map((e) => o(
              sku: e.id,
              name: Value(e.name),
              department: Value(e.department),
            ));
      },
    );
    await db.managers.department.bulkCreate(
      (o) {
        return departmentsData
            .map((e) => o(name: Value(e.name), id: Value(e.id)));
      },
    );
  });

  tearDown(() => db.close());

  test("manager - with references tests - foreign key", () async {
    /// Test that nothing is prefetched if not requested
    for (final (product, refs)
        in await db.managers.product.withReferences().get()) {
      expect(refs.department?.prefetchedData, isNull);
    }

    /// Test that the department is prefetched
    for (final (product, refs) in await db.managers.product
        .withReferences(
          (prefetch) => prefetch(department: true),
        )
        .get()) {
      expect(refs.department?.prefetchedData, allOf(isNotEmpty, hasLength(1)));
    }

    /// Test that filters on the referenced table work
    final booksManager = db.managers.product
        .filter((f) => f.department.id(3))
        .withReferences((prefetch) => prefetch(department: true));
    final books = await booksManager.get();
    expect(books, hasLength(2));
    for (final (product, refs) in books) {
      expect(refs.department?.prefetchedData, isNotEmpty);
    }

    /// Check that the above filter join and prefetch join were combined
    final booksManagerState =
        booksManager.$state.prefetchHooks.withJoins(booksManager.$state);
    expect(booksManagerState.joinBuilders, hasLength(1));
  });

  test("manager - with references tests - reverse reference", () async {
    /// Test that nothing is prefetched if not requested
    for (final (department, refs)
        in await db.managers.department.withReferences().get()) {
      expect(refs.productRefs.prefetchedData, isNull);
    }

    /// Test that the department is prefetched
    for (final (department, refs) in await db.managers.department
        .withReferences(
          (prefetch) => prefetch(productRefs: true),
        )
        .get()) {
      expect(refs.productRefs.prefetchedData, allOf(isNotEmpty));
    }

    /// Department which contains Product ID #3
    final booksDepartment = await db.managers.department
        .filter((f) => f.productRefs((f) => f.sku("3")))
        .withReferences((prefetch) => prefetch(productRefs: true))
        .get();
    for (final (department, refs) in booksDepartment) {
      expect(refs.productRefs.prefetchedData, isNotEmpty);
    }
  });

  test("manager - with references tests - foreign key & reverse reference ",
      () async {
    final listingsData = [
      (product: "1", store: 1, price: 100.0),
      (product: "2", store: 1, price: 50.0),
      (product: "3", store: 2, price: 20.0),
      (product: "4", store: 3, price: 10.0),
    ];
    final storesData = [
      (name: "Walmart", id: 1),
      (name: "Target", id: 2),
      (name: "Costco", id: 3)
    ];
    await db.managers.store.bulkCreate(
      (o) {
        return storesData.map((e) => o(name: Value(e.name), id: Value(e.id)));
      },
    );
    await db.managers.listing.bulkCreate(
      (o) {
        return listingsData.map((e) => o(
            product: e.product, store: Value(e.store), price: Value(e.price)));
      },
    );

    /// Test that the department & listings are prefetched
    for (final (product, refs) in await db.managers.product
        .withReferences(
          (prefetch) => prefetch(department: true, listings: true),
        )
        .get()) {
      expect(refs.department?.prefetchedData, allOf(isNotEmpty, hasLength(1)));
      expect(refs.listings.prefetchedData, allOf(isNotEmpty));
    }
  });

  test("manager - with references tests - watch ", () async {
    final storesData = [
      (name: "Walmart", id: 1),
      (name: "Target", id: 2),
      (name: "Costco", id: 3)
    ];
    final listingsData = [
      (product: "1", store: 1, price: 100.0),
      (product: "2", store: 1, price: 50.0),
      (product: "3", store: 2, price: 20.0),
      (product: "4", store: 3, price: 10.0),
    ];
    await db.managers.store.bulkCreate(
      (o) {
        return storesData.map((e) => o(name: Value(e.name), id: Value(e.id)));
      },
    );
    await db.managers.listing.bulkCreate(
      (o) {
        return listingsData.map((e) => o(
            product: e.product, store: Value(e.store), price: Value(e.price)));
      },
    );

    List<(ProductData, $$ProductTableReferences)>? products;
    final stream = db.managers.product
        .withReferences(
            (prefetch) => prefetch(department: true, listings: true))
        .watch()
        .listen(
      (event) {
        products = event;
      },
    );
    await pumpEventQueue();
    expect(products, isNotNull);
    final productCount = products!.length;

    // Delete a product
    await db.managers.product.filter((f) => f.sku("1")).delete();
    await pumpEventQueue();
    expect(products!.length, productCount - 1);

    // There should be at least one product whose prefetched department is the Books department
    expect(
        products!.where((element) =>
            element.$2.department?.prefetchedData?.firstOrNull?.id == 3),
        isNotEmpty);
    // Delete the books department
    await db.managers.department.filter((f) => f.id(3)).delete();
    await pumpEventQueue();

    // There should not be any actual instances of the Book Department
    expect(
        products!.where((element) =>
            element.$2.department?.prefetchedData?.firstOrNull?.id == 3),
        isEmpty);
  });
}
