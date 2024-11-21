// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// ignore_for_file: type=lint
class $TodoCategoriesTable extends TodoCategories
    with TableInfo<$TodoCategoriesTable, TodoCategory> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodoCategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'todo_categories';
  @override
  VerificationContext validateIntegrity(Insertable<TodoCategory> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TodoCategory map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodoCategory(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $TodoCategoriesTable createAlias(String alias) {
    return $TodoCategoriesTable(attachedDatabase, alias);
  }
}

class TodoCategory extends DataClass implements Insertable<TodoCategory> {
  final int id;
  final String name;
  const TodoCategory({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  TodoCategoriesCompanion toCompanion(bool nullToAbsent) {
    return TodoCategoriesCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory TodoCategory.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoCategory(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  factory TodoCategory.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      TodoCategory.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  TodoCategory copyWith({int? id, String? name}) => TodoCategory(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  TodoCategory copyWithCompanion(TodoCategoriesCompanion data) {
    return TodoCategory(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TodoCategory(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoCategory && other.id == this.id && other.name == this.name);
}

class TodoCategoriesCompanion extends UpdateCompanion<TodoCategory> {
  final Value<int> id;
  final Value<String> name;
  const TodoCategoriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  TodoCategoriesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<TodoCategory> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  TodoCategoriesCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return TodoCategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodoCategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $TodoItemsTable extends TodoItems
    with TableInfo<$TodoItemsTable, TodoItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodoItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _categoryIdMeta =
      const VerificationMeta('categoryId');
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
      'category_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES todo_categories (id)'));
  static const VerificationMeta _generatedTextMeta =
      const VerificationMeta('generatedText');
  @override
  late final GeneratedColumn<String> generatedText = GeneratedColumn<String>(
      'generated_text', aliasedName, true,
      generatedAs: GeneratedAs(
          title + const Constant(' (') + content + const Constant(')'), false),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, content, categoryId, generatedText];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'todo_items';
  @override
  VerificationContext validateIntegrity(Insertable<TodoItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
          _categoryIdMeta,
          categoryId.isAcceptableOrUnknown(
              data['category_id']!, _categoryIdMeta));
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('generated_text')) {
      context.handle(
          _generatedTextMeta,
          generatedText.isAcceptableOrUnknown(
              data['generated_text']!, _generatedTextMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TodoItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodoItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content']),
      categoryId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}category_id'])!,
      generatedText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}generated_text']),
    );
  }

  @override
  $TodoItemsTable createAlias(String alias) {
    return $TodoItemsTable(attachedDatabase, alias);
  }
}

class TodoItem extends DataClass implements Insertable<TodoItem> {
  final int id;
  final String title;
  final String? content;
  final int categoryId;
  final String? generatedText;
  const TodoItem(
      {required this.id,
      required this.title,
      this.content,
      required this.categoryId,
      this.generatedText});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    map['category_id'] = Variable<int>(categoryId);
    return map;
  }

  TodoItemsCompanion toCompanion(bool nullToAbsent) {
    return TodoItemsCompanion(
      id: Value(id),
      title: Value(title),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
      categoryId: Value(categoryId),
    );
  }

  factory TodoItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoItem(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String?>(json['content']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      generatedText: serializer.fromJson<String?>(json['generatedText']),
    );
  }
  factory TodoItem.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      TodoItem.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String?>(content),
      'categoryId': serializer.toJson<int>(categoryId),
      'generatedText': serializer.toJson<String?>(generatedText),
    };
  }

  TodoItem copyWith(
          {int? id,
          String? title,
          Value<String?> content = const Value.absent(),
          int? categoryId,
          Value<String?> generatedText = const Value.absent()}) =>
      TodoItem(
        id: id ?? this.id,
        title: title ?? this.title,
        content: content.present ? content.value : this.content,
        categoryId: categoryId ?? this.categoryId,
        generatedText:
            generatedText.present ? generatedText.value : this.generatedText,
      );
  @override
  String toString() {
    return (StringBuffer('TodoItem(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('categoryId: $categoryId, ')
          ..write('generatedText: $generatedText')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, content, categoryId, generatedText);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoItem &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.categoryId == this.categoryId &&
          other.generatedText == this.generatedText);
}

class TodoItemsCompanion extends UpdateCompanion<TodoItem> {
  final Value<int> id;
  final Value<String> title;
  final Value<String?> content;
  final Value<int> categoryId;
  const TodoItemsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.categoryId = const Value.absent(),
  });
  TodoItemsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.content = const Value.absent(),
    required int categoryId,
  })  : title = Value(title),
        categoryId = Value(categoryId);
  static Insertable<TodoItem> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<int>? categoryId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (categoryId != null) 'category_id': categoryId,
    });
  }

  TodoItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String?>? content,
      Value<int>? categoryId}) {
    return TodoItemsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      categoryId: categoryId ?? this.categoryId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodoItemsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('categoryId: $categoryId')
          ..write(')'))
        .toString();
  }
}

class TodoCategoryItemCountData extends DataClass {
  final String name;
  final int? itemCount;
  const TodoCategoryItemCountData({required this.name, this.itemCount});
  factory TodoCategoryItemCountData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoCategoryItemCountData(
      name: serializer.fromJson<String>(json['name']),
      itemCount: serializer.fromJson<int?>(json['itemCount']),
    );
  }
  factory TodoCategoryItemCountData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      TodoCategoryItemCountData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<String>(name),
      'itemCount': serializer.toJson<int?>(itemCount),
    };
  }

  TodoCategoryItemCountData copyWith(
          {String? name, Value<int?> itemCount = const Value.absent()}) =>
      TodoCategoryItemCountData(
        name: name ?? this.name,
        itemCount: itemCount.present ? itemCount.value : this.itemCount,
      );
  @override
  String toString() {
    return (StringBuffer('TodoCategoryItemCountData(')
          ..write('name: $name, ')
          ..write('itemCount: $itemCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(name, itemCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoCategoryItemCountData &&
          other.name == this.name &&
          other.itemCount == this.itemCount);
}

class $TodoCategoryItemCountView
    extends ViewInfo<$TodoCategoryItemCountView, TodoCategoryItemCountData>
    implements HasResultSet {
  final String? _alias;
  @override
  final _$Database attachedDatabase;
  $TodoCategoryItemCountView(this.attachedDatabase, [this._alias]);
  $TodoItemsTable get todoItems => attachedDatabase.todoItems.createAlias('t0');
  $TodoCategoriesTable get todoCategories =>
      attachedDatabase.todoCategories.createAlias('t1');
  @override
  List<GeneratedColumn> get $columns => [name, itemCount];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'todo_category_item_count';
  @override
  Map<SqlDialect, String>? get createViewStatements => null;
  @override
  $TodoCategoryItemCountView get asDslTable => this;
  @override
  TodoCategoryItemCountData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodoCategoryItemCountData(
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      itemCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_count']),
    );
  }

  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      generatedAs: GeneratedAs(todoCategories.name, false),
      type: DriftSqlType.string);
  late final GeneratedColumn<int> itemCount = GeneratedColumn<int>(
      'item_count', aliasedName, true,
      generatedAs: GeneratedAs(BaseAggregate(todoItems.id).count(), false),
      type: DriftSqlType.int);
  @override
  $TodoCategoryItemCountView createAlias(String alias) {
    return $TodoCategoryItemCountView(attachedDatabase, alias);
  }

  @override
  Query? get query =>
      (attachedDatabase.selectOnly(todoCategories)..addColumns($columns)).join([
        innerJoin(todoItems, todoItems.categoryId.equalsExp(todoCategories.id))
      ]);
  @override
  Set<String> get readTables => const {'todo_items', 'todo_categories'};
}

class TodoItemWithCategoryNameViewData extends DataClass {
  final int id;
  final String? title;
  const TodoItemWithCategoryNameViewData({required this.id, this.title});
  factory TodoItemWithCategoryNameViewData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TodoItemWithCategoryNameViewData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String?>(json['title']),
    );
  }
  factory TodoItemWithCategoryNameViewData.fromJsonString(String encodedJson,
          {ValueSerializer? serializer}) =>
      TodoItemWithCategoryNameViewData.fromJson(
          DataClass.parseJson(encodedJson) as Map<String, dynamic>,
          serializer: serializer);
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String?>(title),
    };
  }

  TodoItemWithCategoryNameViewData copyWith(
          {int? id, Value<String?> title = const Value.absent()}) =>
      TodoItemWithCategoryNameViewData(
        id: id ?? this.id,
        title: title.present ? title.value : this.title,
      );
  @override
  String toString() {
    return (StringBuffer('TodoItemWithCategoryNameViewData(')
          ..write('id: $id, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TodoItemWithCategoryNameViewData &&
          other.id == this.id &&
          other.title == this.title);
}

class $TodoItemWithCategoryNameViewView extends ViewInfo<
    $TodoItemWithCategoryNameViewView,
    TodoItemWithCategoryNameViewData> implements HasResultSet {
  final String? _alias;
  @override
  final _$Database attachedDatabase;
  $TodoItemWithCategoryNameViewView(this.attachedDatabase, [this._alias]);
  $TodoItemsTable get todoItems => attachedDatabase.todoItems.createAlias('t0');
  $TodoCategoriesTable get todoCategories =>
      attachedDatabase.todoCategories.createAlias('t1');
  @override
  List<GeneratedColumn> get $columns => [id, title];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'customViewName';
  @override
  Map<SqlDialect, String>? get createViewStatements => null;
  @override
  $TodoItemWithCategoryNameViewView get asDslTable => this;
  @override
  TodoItemWithCategoryNameViewData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TodoItemWithCategoryNameViewData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
    );
  }

  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      generatedAs: GeneratedAs(todoItems.id, false), type: DriftSqlType.int);
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      generatedAs: GeneratedAs(
          todoItems.title +
              const Constant('(') +
              todoCategories.name +
              const Constant(')'),
          false),
      type: DriftSqlType.string);
  @override
  $TodoItemWithCategoryNameViewView createAlias(String alias) {
    return $TodoItemWithCategoryNameViewView(attachedDatabase, alias);
  }

  @override
  Query? get query =>
      (attachedDatabase.selectOnly(todoItems)..addColumns($columns)).join([
        innerJoin(
            todoCategories, todoCategories.id.equalsExp(todoItems.categoryId))
      ]);
  @override
  Set<String> get readTables => const {'todo_items', 'todo_categories'};
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final $TodoCategoriesTable todoCategories = $TodoCategoriesTable(this);
  late final $TodoItemsTable todoItems = $TodoItemsTable(this);
  late final $TodoCategoryItemCountView todoCategoryItemCount =
      $TodoCategoryItemCountView(this);
  late final $TodoItemWithCategoryNameViewView customViewName =
      $TodoItemWithCategoryNameViewView(this);
  late final Index itemTitle =
      Index('item_title', 'CREATE INDEX item_title ON todo_items (title)');
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        todoCategories,
        todoItems,
        todoCategoryItemCount,
        customViewName,
        itemTitle
      ];
}

typedef $$TodoCategoriesTableCreateCompanionBuilder = TodoCategoriesCompanion
    Function({
  Value<int> id,
  required String name,
});
typedef $$TodoCategoriesTableUpdateCompanionBuilder = TodoCategoriesCompanion
    Function({
  Value<int> id,
  Value<String> name,
});

final class $$TodoCategoriesTableReferences
    extends BaseReferences<_$Database, $TodoCategoriesTable, TodoCategory> {
  $$TodoCategoriesTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$TodoItemsTable, List<TodoItem>>
      _todoItemsRefsTable(_$Database db) =>
          MultiTypedResultKey.fromTable(db.todoItems,
              aliasName: $_aliasNameGenerator(
                  db.todoCategories.id, db.todoItems.categoryId));

  $$TodoItemsTableProcessedTableManager get todoItemsRefs {
    final manager = $$TodoItemsTableTableManager($_db, $_db.todoItems)
        .filter((f) => f.categoryId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_todoItemsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$TodoCategoriesTableFilterComposer
    extends Composer<_$Database, $TodoCategoriesTable> {
  $$TodoCategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  Expression<bool> todoItemsRefs(
      Expression<bool> Function($$TodoItemsTableFilterComposer f) f) {
    final $$TodoItemsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.todoItems,
        getReferencedColumn: (t) => t.categoryId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TodoItemsTableFilterComposer(
              $db: $db,
              $table: $db.todoItems,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TodoCategoriesTableOrderingComposer
    extends Composer<_$Database, $TodoCategoriesTable> {
  $$TodoCategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$TodoCategoriesTableAnnotationComposer
    extends Composer<_$Database, $TodoCategoriesTable> {
  $$TodoCategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> todoItemsRefs<T extends Object>(
      Expression<T> Function($$TodoItemsTableAnnotationComposer a) f) {
    final $$TodoItemsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.todoItems,
        getReferencedColumn: (t) => t.categoryId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TodoItemsTableAnnotationComposer(
              $db: $db,
              $table: $db.todoItems,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$TodoCategoriesTableTableManager extends RootTableManager<
    _$Database,
    $TodoCategoriesTable,
    TodoCategory,
    $$TodoCategoriesTableFilterComposer,
    $$TodoCategoriesTableOrderingComposer,
    $$TodoCategoriesTableAnnotationComposer,
    $$TodoCategoriesTableCreateCompanionBuilder,
    $$TodoCategoriesTableUpdateCompanionBuilder,
    (TodoCategory, $$TodoCategoriesTableReferences),
    TodoCategory,
    PrefetchHooks Function({bool todoItemsRefs})> {
  $$TodoCategoriesTableTableManager(_$Database db, $TodoCategoriesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TodoCategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TodoCategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TodoCategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              TodoCategoriesCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              TodoCategoriesCompanion.insert(
            id: id,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TodoCategoriesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({todoItemsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (todoItemsRefs) db.todoItems],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (todoItemsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$TodoCategoriesTableReferences
                            ._todoItemsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$TodoCategoriesTableReferences(db, table, p0)
                                .todoItemsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.categoryId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$TodoCategoriesTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $TodoCategoriesTable,
    TodoCategory,
    $$TodoCategoriesTableFilterComposer,
    $$TodoCategoriesTableOrderingComposer,
    $$TodoCategoriesTableAnnotationComposer,
    $$TodoCategoriesTableCreateCompanionBuilder,
    $$TodoCategoriesTableUpdateCompanionBuilder,
    (TodoCategory, $$TodoCategoriesTableReferences),
    TodoCategory,
    PrefetchHooks Function({bool todoItemsRefs})>;
typedef $$TodoItemsTableCreateCompanionBuilder = TodoItemsCompanion Function({
  Value<int> id,
  required String title,
  Value<String?> content,
  required int categoryId,
});
typedef $$TodoItemsTableUpdateCompanionBuilder = TodoItemsCompanion Function({
  Value<int> id,
  Value<String> title,
  Value<String?> content,
  Value<int> categoryId,
});

final class $$TodoItemsTableReferences
    extends BaseReferences<_$Database, $TodoItemsTable, TodoItem> {
  $$TodoItemsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $TodoCategoriesTable _categoryIdTable(_$Database db) =>
      db.todoCategories.createAlias(
          $_aliasNameGenerator(db.todoItems.categoryId, db.todoCategories.id));

  $$TodoCategoriesTableProcessedTableManager get categoryId {
    final manager = $$TodoCategoriesTableTableManager($_db, $_db.todoCategories)
        .filter((f) => f.id($_item.categoryId!));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TodoItemsTableFilterComposer
    extends Composer<_$Database, $TodoItemsTable> {
  $$TodoItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get generatedText => $composableBuilder(
      column: $table.generatedText, builder: (column) => ColumnFilters(column));

  $$TodoCategoriesTableFilterComposer get categoryId {
    final $$TodoCategoriesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.categoryId,
        referencedTable: $db.todoCategories,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TodoCategoriesTableFilterComposer(
              $db: $db,
              $table: $db.todoCategories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TodoItemsTableOrderingComposer
    extends Composer<_$Database, $TodoItemsTable> {
  $$TodoItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get generatedText => $composableBuilder(
      column: $table.generatedText,
      builder: (column) => ColumnOrderings(column));

  $$TodoCategoriesTableOrderingComposer get categoryId {
    final $$TodoCategoriesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.categoryId,
        referencedTable: $db.todoCategories,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TodoCategoriesTableOrderingComposer(
              $db: $db,
              $table: $db.todoCategories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TodoItemsTableAnnotationComposer
    extends Composer<_$Database, $TodoItemsTable> {
  $$TodoItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<String> get generatedText => $composableBuilder(
      column: $table.generatedText, builder: (column) => column);

  $$TodoCategoriesTableAnnotationComposer get categoryId {
    final $$TodoCategoriesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.categoryId,
        referencedTable: $db.todoCategories,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TodoCategoriesTableAnnotationComposer(
              $db: $db,
              $table: $db.todoCategories,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TodoItemsTableTableManager extends RootTableManager<
    _$Database,
    $TodoItemsTable,
    TodoItem,
    $$TodoItemsTableFilterComposer,
    $$TodoItemsTableOrderingComposer,
    $$TodoItemsTableAnnotationComposer,
    $$TodoItemsTableCreateCompanionBuilder,
    $$TodoItemsTableUpdateCompanionBuilder,
    (TodoItem, $$TodoItemsTableReferences),
    TodoItem,
    PrefetchHooks Function({bool categoryId})> {
  $$TodoItemsTableTableManager(_$Database db, $TodoItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TodoItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TodoItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TodoItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> content = const Value.absent(),
            Value<int> categoryId = const Value.absent(),
          }) =>
              TodoItemsCompanion(
            id: id,
            title: title,
            content: content,
            categoryId: categoryId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String title,
            Value<String?> content = const Value.absent(),
            required int categoryId,
          }) =>
              TodoItemsCompanion.insert(
            id: id,
            title: title,
            content: content,
            categoryId: categoryId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TodoItemsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({categoryId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (categoryId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.categoryId,
                    referencedTable:
                        $$TodoItemsTableReferences._categoryIdTable(db),
                    referencedColumn:
                        $$TodoItemsTableReferences._categoryIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$TodoItemsTableProcessedTableManager = ProcessedTableManager<
    _$Database,
    $TodoItemsTable,
    TodoItem,
    $$TodoItemsTableFilterComposer,
    $$TodoItemsTableOrderingComposer,
    $$TodoItemsTableAnnotationComposer,
    $$TodoItemsTableCreateCompanionBuilder,
    $$TodoItemsTableUpdateCompanionBuilder,
    (TodoItem, $$TodoItemsTableReferences),
    TodoItem,
    PrefetchHooks Function({bool categoryId})>;

class $DatabaseManager {
  final _$Database _db;
  $DatabaseManager(this._db);
  $$TodoCategoriesTableTableManager get todoCategories =>
      $$TodoCategoriesTableTableManager(_db, _db.todoCategories);
  $$TodoItemsTableTableManager get todoItems =>
      $$TodoItemsTableTableManager(_db, _db.todoItems);
}
