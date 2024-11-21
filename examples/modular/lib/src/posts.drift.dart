// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:modular/src/posts.drift.dart' as i1;
import 'package:modular/src/users.drift.dart' as i2;
import 'package:drift/internal/modular.dart' as i3;

typedef $PostsCreateCompanionBuilder = i1.PostsCompanion Function({
  i0.Value<int> id,
  required int author,
  i0.Value<String?> content,
});
typedef $PostsUpdateCompanionBuilder = i1.PostsCompanion Function({
  i0.Value<int> id,
  i0.Value<int> author,
  i0.Value<String?> content,
});

class $PostsFilterComposer extends i0.Composer<i0.GeneratedDatabase, i1.Posts> {
  $PostsFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnFilters(column));

  i0.ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => i0.ColumnFilters(column));

  i2.$UsersFilterComposer get author {
    final i2.$UsersFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.author,
        referencedTable:
            i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i2.$UsersFilterComposer(
              $db: $db,
              $table:
                  i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  i0.Expression<bool> likesRefs(
      i0.Expression<bool> Function(i1.$LikesFilterComposer f) f) {
    final i1.$LikesFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable:
            i3.ReadDatabaseContainer($db).resultSet<i1.Likes>('likes'),
        getReferencedColumn: (t) => t.post,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$LikesFilterComposer(
              $db: $db,
              $table:
                  i3.ReadDatabaseContainer($db).resultSet<i1.Likes>('likes'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $PostsOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Posts> {
  $PostsOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => i0.ColumnOrderings(column));

  i0.ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => i0.ColumnOrderings(column));

  i2.$UsersOrderingComposer get author {
    final i2.$UsersOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.author,
        referencedTable:
            i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i2.$UsersOrderingComposer(
              $db: $db,
              $table:
                  i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $PostsAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Posts> {
  $PostsAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i0.GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  i0.GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  i2.$UsersAnnotationComposer get author {
    final i2.$UsersAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.author,
        referencedTable:
            i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i2.$UsersAnnotationComposer(
              $db: $db,
              $table:
                  i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  i0.Expression<T> likesRefs<T extends Object>(
      i0.Expression<T> Function(i1.$LikesAnnotationComposer a) f) {
    final i1.$LikesAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable:
            i3.ReadDatabaseContainer($db).resultSet<i1.Likes>('likes'),
        getReferencedColumn: (t) => t.post,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$LikesAnnotationComposer(
              $db: $db,
              $table:
                  i3.ReadDatabaseContainer($db).resultSet<i1.Likes>('likes'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $PostsTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.Posts,
    i1.Post,
    i1.$PostsFilterComposer,
    i1.$PostsOrderingComposer,
    i1.$PostsAnnotationComposer,
    $PostsCreateCompanionBuilder,
    $PostsUpdateCompanionBuilder,
    (i1.Post, i0.BaseReferences<i0.GeneratedDatabase, i1.Posts, i1.Post>),
    i1.Post,
    i0.PrefetchHooks Function({bool author, bool likesRefs})> {
  $PostsTableManager(i0.GeneratedDatabase db, i1.Posts table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$PostsFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$PostsOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              i1.$PostsAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            i0.Value<int> id = const i0.Value.absent(),
            i0.Value<int> author = const i0.Value.absent(),
            i0.Value<String?> content = const i0.Value.absent(),
          }) =>
              i1.PostsCompanion(
            id: id,
            author: author,
            content: content,
          ),
          createCompanionCallback: ({
            i0.Value<int> id = const i0.Value.absent(),
            required int author,
            i0.Value<String?> content = const i0.Value.absent(),
          }) =>
              i1.PostsCompanion.insert(
            id: id,
            author: author,
            content: content,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $PostsProcessedTableManager = i0.ProcessedTableManager<
    i0.GeneratedDatabase,
    i1.Posts,
    i1.Post,
    i1.$PostsFilterComposer,
    i1.$PostsOrderingComposer,
    i1.$PostsAnnotationComposer,
    $PostsCreateCompanionBuilder,
    $PostsUpdateCompanionBuilder,
    (i1.Post, i0.BaseReferences<i0.GeneratedDatabase, i1.Posts, i1.Post>),
    i1.Post,
    i0.PrefetchHooks Function({bool author, bool likesRefs})>;
typedef $LikesCreateCompanionBuilder = i1.LikesCompanion Function({
  required int post,
  required int likedBy,
  i0.Value<int> rowid,
});
typedef $LikesUpdateCompanionBuilder = i1.LikesCompanion Function({
  i0.Value<int> post,
  i0.Value<int> likedBy,
  i0.Value<int> rowid,
});

class $LikesFilterComposer extends i0.Composer<i0.GeneratedDatabase, i1.Likes> {
  $LikesFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i1.$PostsFilterComposer get post {
    final i1.$PostsFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.post,
        referencedTable:
            i3.ReadDatabaseContainer($db).resultSet<i1.Posts>('posts'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$PostsFilterComposer(
              $db: $db,
              $table:
                  i3.ReadDatabaseContainer($db).resultSet<i1.Posts>('posts'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  i2.$UsersFilterComposer get likedBy {
    final i2.$UsersFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.likedBy,
        referencedTable:
            i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i2.$UsersFilterComposer(
              $db: $db,
              $table:
                  i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $LikesOrderingComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Likes> {
  $LikesOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i1.$PostsOrderingComposer get post {
    final i1.$PostsOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.post,
        referencedTable:
            i3.ReadDatabaseContainer($db).resultSet<i1.Posts>('posts'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$PostsOrderingComposer(
              $db: $db,
              $table:
                  i3.ReadDatabaseContainer($db).resultSet<i1.Posts>('posts'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  i2.$UsersOrderingComposer get likedBy {
    final i2.$UsersOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.likedBy,
        referencedTable:
            i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i2.$UsersOrderingComposer(
              $db: $db,
              $table:
                  i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $LikesAnnotationComposer
    extends i0.Composer<i0.GeneratedDatabase, i1.Likes> {
  $LikesAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  i1.$PostsAnnotationComposer get post {
    final i1.$PostsAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.post,
        referencedTable:
            i3.ReadDatabaseContainer($db).resultSet<i1.Posts>('posts'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i1.$PostsAnnotationComposer(
              $db: $db,
              $table:
                  i3.ReadDatabaseContainer($db).resultSet<i1.Posts>('posts'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  i2.$UsersAnnotationComposer get likedBy {
    final i2.$UsersAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.likedBy,
        referencedTable:
            i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            i2.$UsersAnnotationComposer(
              $db: $db,
              $table:
                  i3.ReadDatabaseContainer($db).resultSet<i2.Users>('users'),
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $LikesTableManager extends i0.RootTableManager<
    i0.GeneratedDatabase,
    i1.Likes,
    i1.Like,
    i1.$LikesFilterComposer,
    i1.$LikesOrderingComposer,
    i1.$LikesAnnotationComposer,
    $LikesCreateCompanionBuilder,
    $LikesUpdateCompanionBuilder,
    (i1.Like, i0.BaseReferences<i0.GeneratedDatabase, i1.Likes, i1.Like>),
    i1.Like,
    i0.PrefetchHooks Function({bool post, bool likedBy})> {
  $LikesTableManager(i0.GeneratedDatabase db, i1.Likes table)
      : super(i0.TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              i1.$LikesFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              i1.$LikesOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              i1.$LikesAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            i0.Value<int> post = const i0.Value.absent(),
            i0.Value<int> likedBy = const i0.Value.absent(),
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.LikesCompanion(
            post: post,
            likedBy: likedBy,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int post,
            required int likedBy,
            i0.Value<int> rowid = const i0.Value.absent(),
          }) =>
              i1.LikesCompanion.insert(
            post: post,
            likedBy: likedBy,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), i0.BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $LikesProcessedTableManager = i0.ProcessedTableManager<
    i0.GeneratedDatabase,
    i1.Likes,
    i1.Like,
    i1.$LikesFilterComposer,
    i1.$LikesOrderingComposer,
    i1.$LikesAnnotationComposer,
    $LikesCreateCompanionBuilder,
    $LikesUpdateCompanionBuilder,
    (i1.Like, i0.BaseReferences<i0.GeneratedDatabase, i1.Likes, i1.Like>),
    i1.Like,
    i0.PrefetchHooks Function({bool post, bool likedBy})>;

class Posts extends i0.Table with i0.TableInfo<Posts, i1.Post> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  Posts(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _idMeta = const i0.VerificationMeta('id');
  late final i0.GeneratedColumn<int> id = i0.GeneratedColumn<int>(
      'id', aliasedName, false,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  static const i0.VerificationMeta _authorMeta =
      const i0.VerificationMeta('author');
  late final i0.GeneratedColumn<int> author = i0.GeneratedColumn<int>(
      'author', aliasedName, false,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL REFERENCES users(id)');
  static const i0.VerificationMeta _contentMeta =
      const i0.VerificationMeta('content');
  late final i0.GeneratedColumn<String> content = i0.GeneratedColumn<String>(
      'content', aliasedName, true,
      type: i0.DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<i0.GeneratedColumn> get $columns => [id, author, content];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'posts';
  @override
  i0.VerificationContext validateIntegrity(i0.Insertable<i1.Post> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    } else if (isInserting) {
      context.missing(_authorMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => {id};
  @override
  i1.Post map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.Post(
      id: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}id'])!,
      author: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}author'])!,
      content: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.string, data['${effectivePrefix}content']),
    );
  }

  @override
  Posts createAlias(String alias) {
    return Posts(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Post extends i0.DataClass implements i0.Insertable<i1.Post> {
  final int id;
  final int author;
  final String? content;
  const Post({required this.id, required this.author, this.content});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['id'] = i0.Variable<int>(id);
    map['author'] = i0.Variable<int>(author);
    if (!nullToAbsent || content != null) {
      map['content'] = i0.Variable<String>(content);
    }
    return map;
  }

  i1.PostsCompanion toCompanion(bool nullToAbsent) {
    return i1.PostsCompanion(
      id: i0.Value(id),
      author: i0.Value(author),
      content: content == null && nullToAbsent
          ? const i0.Value.absent()
          : i0.Value(content),
    );
  }

  factory Post.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return Post(
      id: serializer.fromJson<int>(json['id']),
      author: serializer.fromJson<int>(json['author']),
      content: serializer.fromJson<String?>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'author': serializer.toJson<int>(author),
      'content': serializer.toJson<String?>(content),
    };
  }

  i1.Post copyWith(
          {int? id,
          int? author,
          i0.Value<String?> content = const i0.Value.absent()}) =>
      i1.Post(
        id: id ?? this.id,
        author: author ?? this.author,
        content: content.present ? content.value : this.content,
      );
  Post copyWithCompanion(i1.PostsCompanion data) {
    return Post(
      id: data.id.present ? data.id.value : this.id,
      author: data.author.present ? data.author.value : this.author,
      content: data.content.present ? data.content.value : this.content,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Post(')
          ..write('id: $id, ')
          ..write('author: $author, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, author, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.Post &&
          other.id == this.id &&
          other.author == this.author &&
          other.content == this.content);
}

class PostsCompanion extends i0.UpdateCompanion<i1.Post> {
  final i0.Value<int> id;
  final i0.Value<int> author;
  final i0.Value<String?> content;
  const PostsCompanion({
    this.id = const i0.Value.absent(),
    this.author = const i0.Value.absent(),
    this.content = const i0.Value.absent(),
  });
  PostsCompanion.insert({
    this.id = const i0.Value.absent(),
    required int author,
    this.content = const i0.Value.absent(),
  }) : author = i0.Value(author);
  static i0.Insertable<i1.Post> custom({
    i0.Expression<int>? id,
    i0.Expression<int>? author,
    i0.Expression<String>? content,
  }) {
    return i0.RawValuesInsertable({
      if (id != null) 'id': id,
      if (author != null) 'author': author,
      if (content != null) 'content': content,
    });
  }

  i1.PostsCompanion copyWith(
      {i0.Value<int>? id, i0.Value<int>? author, i0.Value<String?>? content}) {
    return i1.PostsCompanion(
      id: id ?? this.id,
      author: author ?? this.author,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (id.present) {
      map['id'] = i0.Variable<int>(id.value);
    }
    if (author.present) {
      map['author'] = i0.Variable<int>(author.value);
    }
    if (content.present) {
      map['content'] = i0.Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PostsCompanion(')
          ..write('id: $id, ')
          ..write('author: $author, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class Likes extends i0.Table with i0.TableInfo<Likes, i1.Like> {
  @override
  final i0.GeneratedDatabase attachedDatabase;
  final String? _alias;
  Likes(this.attachedDatabase, [this._alias]);
  static const i0.VerificationMeta _postMeta =
      const i0.VerificationMeta('post');
  late final i0.GeneratedColumn<int> post = i0.GeneratedColumn<int>(
      'post', aliasedName, false,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL REFERENCES posts(id)');
  static const i0.VerificationMeta _likedByMeta =
      const i0.VerificationMeta('likedBy');
  late final i0.GeneratedColumn<int> likedBy = i0.GeneratedColumn<int>(
      'liked_by', aliasedName, false,
      type: i0.DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL REFERENCES users(id)');
  @override
  List<i0.GeneratedColumn> get $columns => [post, likedBy];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'likes';
  @override
  i0.VerificationContext validateIntegrity(i0.Insertable<i1.Like> instance,
      {bool isInserting = false}) {
    final context = i0.VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('post')) {
      context.handle(
          _postMeta, post.isAcceptableOrUnknown(data['post']!, _postMeta));
    } else if (isInserting) {
      context.missing(_postMeta);
    }
    if (data.containsKey('liked_by')) {
      context.handle(_likedByMeta,
          likedBy.isAcceptableOrUnknown(data['liked_by']!, _likedByMeta));
    } else if (isInserting) {
      context.missing(_likedByMeta);
    }
    return context;
  }

  @override
  Set<i0.GeneratedColumn> get $primaryKey => const {};
  @override
  i1.Like map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return i1.Like(
      post: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}post'])!,
      likedBy: attachedDatabase.typeMapping
          .read(i0.DriftSqlType.int, data['${effectivePrefix}liked_by'])!,
    );
  }

  @override
  Likes createAlias(String alias) {
    return Likes(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Like extends i0.DataClass implements i0.Insertable<i1.Like> {
  final int post;
  final int likedBy;
  const Like({required this.post, required this.likedBy});
  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    map['post'] = i0.Variable<int>(post);
    map['liked_by'] = i0.Variable<int>(likedBy);
    return map;
  }

  i1.LikesCompanion toCompanion(bool nullToAbsent) {
    return i1.LikesCompanion(
      post: i0.Value(post),
      likedBy: i0.Value(likedBy),
    );
  }

  factory Like.fromJson(Map<String, dynamic> json,
      {i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return Like(
      post: serializer.fromJson<int>(json['post']),
      likedBy: serializer.fromJson<int>(json['liked_by']),
    );
  }
  @override
  Map<String, dynamic> toJson({i0.ValueSerializer? serializer}) {
    serializer ??= i0.driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'post': serializer.toJson<int>(post),
      'liked_by': serializer.toJson<int>(likedBy),
    };
  }

  i1.Like copyWith({int? post, int? likedBy}) => i1.Like(
        post: post ?? this.post,
        likedBy: likedBy ?? this.likedBy,
      );
  Like copyWithCompanion(i1.LikesCompanion data) {
    return Like(
      post: data.post.present ? data.post.value : this.post,
      likedBy: data.likedBy.present ? data.likedBy.value : this.likedBy,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Like(')
          ..write('post: $post, ')
          ..write('likedBy: $likedBy')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(post, likedBy);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is i1.Like &&
          other.post == this.post &&
          other.likedBy == this.likedBy);
}

class LikesCompanion extends i0.UpdateCompanion<i1.Like> {
  final i0.Value<int> post;
  final i0.Value<int> likedBy;
  final i0.Value<int> rowid;
  const LikesCompanion({
    this.post = const i0.Value.absent(),
    this.likedBy = const i0.Value.absent(),
    this.rowid = const i0.Value.absent(),
  });
  LikesCompanion.insert({
    required int post,
    required int likedBy,
    this.rowid = const i0.Value.absent(),
  })  : post = i0.Value(post),
        likedBy = i0.Value(likedBy);
  static i0.Insertable<i1.Like> custom({
    i0.Expression<int>? post,
    i0.Expression<int>? likedBy,
    i0.Expression<int>? rowid,
  }) {
    return i0.RawValuesInsertable({
      if (post != null) 'post': post,
      if (likedBy != null) 'liked_by': likedBy,
      if (rowid != null) 'rowid': rowid,
    });
  }

  i1.LikesCompanion copyWith(
      {i0.Value<int>? post, i0.Value<int>? likedBy, i0.Value<int>? rowid}) {
    return i1.LikesCompanion(
      post: post ?? this.post,
      likedBy: likedBy ?? this.likedBy,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, i0.Expression> toColumns(bool nullToAbsent) {
    final map = <String, i0.Expression>{};
    if (post.present) {
      map['post'] = i0.Variable<int>(post.value);
    }
    if (likedBy.present) {
      map['liked_by'] = i0.Variable<int>(likedBy.value);
    }
    if (rowid.present) {
      map['rowid'] = i0.Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LikesCompanion(')
          ..write('post: $post, ')
          ..write('likedBy: $likedBy, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}
