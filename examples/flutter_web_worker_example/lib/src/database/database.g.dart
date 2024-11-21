// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class Entries extends Table with TableInfo<Entries, Entry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Entries(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
      'text', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [id, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'entries';
  @override
  VerificationContext validateIntegrity(Insertable<Entry> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('text')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['text']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Entry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Entry(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text'])!,
    );
  }

  @override
  Entries createAlias(String alias) {
    return Entries(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Entry extends DataClass implements Insertable<Entry> {
  final int id;
  final String value;
  const Entry({required this.id, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['text'] = Variable<String>(value);
    return map;
  }

  EntriesCompanion toCompanion(bool nullToAbsent) {
    return EntriesCompanion(
      id: Value(id),
      value: Value(value),
    );
  }

  factory Entry.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Entry(
      id: serializer.fromJson<int>(json['id']),
      value: serializer.fromJson<String>(json['text']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'text': serializer.toJson<String>(value),
    };
  }

  Entry copyWith({int? id, String? value}) => Entry(
        id: id ?? this.id,
        value: value ?? this.value,
      );
  Entry copyWithCompanion(EntriesCompanion data) {
    return Entry(
      id: data.id.present ? data.id.value : this.id,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Entry(')
          ..write('id: $id, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Entry && other.id == this.id && other.value == this.value);
}

class EntriesCompanion extends UpdateCompanion<Entry> {
  final Value<int> id;
  final Value<String> value;
  const EntriesCompanion({
    this.id = const Value.absent(),
    this.value = const Value.absent(),
  });
  EntriesCompanion.insert({
    this.id = const Value.absent(),
    required String value,
  }) : value = Value(value);
  static Insertable<Entry> custom({
    Expression<int>? id,
    Expression<String>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (value != null) 'text': value,
    });
  }

  EntriesCompanion copyWith({Value<int>? id, Value<String>? value}) {
    return EntriesCompanion(
      id: id ?? this.id,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (value.present) {
      map['text'] = Variable<String>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EntriesCompanion(')
          ..write('id: $id, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  $MyDatabaseManager get managers => $MyDatabaseManager(this);
  late final Entries entries = Entries(this);
  Selectable<Entry> allEntries() {
    return customSelect('SELECT * FROM entries', variables: [], readsFrom: {
      entries,
    }).asyncMap(entries.mapFromRow);
  }

  Future<int> addEntry(String var1) {
    return customInsert(
      'INSERT INTO entries (text) VALUES (?1)',
      variables: [Variable<String>(var1)],
      updates: {entries},
    );
  }

  Future<int> clearEntries() {
    return customUpdate(
      'DELETE FROM entries',
      variables: [],
      updates: {entries},
      updateKind: UpdateKind.delete,
    );
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [entries];
}

typedef $EntriesCreateCompanionBuilder = EntriesCompanion Function({
  Value<int> id,
  required String value,
});
typedef $EntriesUpdateCompanionBuilder = EntriesCompanion Function({
  Value<int> id,
  Value<String> value,
});

class $EntriesFilterComposer extends Composer<_$MyDatabase, Entries> {
  $EntriesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnFilters(column));
}

class $EntriesOrderingComposer extends Composer<_$MyDatabase, Entries> {
  $EntriesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get value => $composableBuilder(
      column: $table.value, builder: (column) => ColumnOrderings(column));
}

class $EntriesAnnotationComposer extends Composer<_$MyDatabase, Entries> {
  $EntriesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $EntriesTableManager extends RootTableManager<
    _$MyDatabase,
    Entries,
    Entry,
    $EntriesFilterComposer,
    $EntriesOrderingComposer,
    $EntriesAnnotationComposer,
    $EntriesCreateCompanionBuilder,
    $EntriesUpdateCompanionBuilder,
    (Entry, BaseReferences<_$MyDatabase, Entries, Entry>),
    Entry,
    PrefetchHooks Function()> {
  $EntriesTableManager(_$MyDatabase db, Entries table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $EntriesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $EntriesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $EntriesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> value = const Value.absent(),
          }) =>
              EntriesCompanion(
            id: id,
            value: value,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String value,
          }) =>
              EntriesCompanion.insert(
            id: id,
            value: value,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $EntriesProcessedTableManager = ProcessedTableManager<
    _$MyDatabase,
    Entries,
    Entry,
    $EntriesFilterComposer,
    $EntriesOrderingComposer,
    $EntriesAnnotationComposer,
    $EntriesCreateCompanionBuilder,
    $EntriesUpdateCompanionBuilder,
    (Entry, BaseReferences<_$MyDatabase, Entries, Entry>),
    Entry,
    PrefetchHooks Function()>;

class $MyDatabaseManager {
  final _$MyDatabase _db;
  $MyDatabaseManager(this._db);
  $EntriesTableManager get entries => $EntriesTableManager(_db, _db.entries);
}
