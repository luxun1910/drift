// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:modular/src/users.drift.dart' as i1;
import 'package:modular/src/posts.drift.dart' as i2;
import 'package:modular/src/search.drift.dart' as i3;
import 'package:modular/src/user_queries.drift.dart' as i4;
import 'package:modular/accessor.dart' as i5;
import 'package:modular/database.dart' as i6;
import 'package:drift/internal/modular.dart' as i7;

abstract class $Database extends i0.GeneratedDatabase {
  $Database(i0.QueryExecutor e) : super(e);
  $DatabaseManager get managers => $DatabaseManager(this);
  late final i1.Users users = i1.Users(this);
  late final i2.Posts posts = i2.Posts(this);
  late final i3.SearchInPosts searchInPosts = i3.SearchInPosts(this);
  late final i2.Likes likes = i2.Likes(this);
  late final i1.Follows follows = i1.Follows(this);
  late final i1.PopularUsers popularUsers = i1.PopularUsers(this);
  late final i5.MyAccessor myAccessor = i5.MyAccessor(this as i6.Database);
  i4.UserQueriesDrift get userQueriesDrift => i7.ReadDatabaseContainer(this)
      .accessor<i4.UserQueriesDrift>(i4.UserQueriesDrift.new);
  i3.SearchDrift get searchDrift => i7.ReadDatabaseContainer(this)
      .accessor<i3.SearchDrift>(i3.SearchDrift.new);
  @override
  Iterable<i0.TableInfo<i0.Table, Object?>> get allTables =>
      allSchemaEntities.whereType<i0.TableInfo<i0.Table, Object?>>();
  @override
  List<i0.DatabaseSchemaEntity> get allSchemaEntities => [
        users,
        posts,
        searchInPosts,
        i3.postsInsert,
        i3.postsUpdate,
        i3.postsDelete,
        likes,
        follows,
        popularUsers,
        i1.usersName,
        i4.$drift0
      ];
  @override
  i0.StreamQueryUpdateRules get streamUpdateRules =>
      const i0.StreamQueryUpdateRules(
        [
          i0.WritePropagation(
            on: i0.TableUpdateQuery.onTableName('posts',
                limitUpdateKind: i0.UpdateKind.insert),
            result: [
              i0.TableUpdate('search_in_posts', kind: i0.UpdateKind.insert),
            ],
          ),
          i0.WritePropagation(
            on: i0.TableUpdateQuery.onTableName('posts',
                limitUpdateKind: i0.UpdateKind.update),
            result: [
              i0.TableUpdate('search_in_posts', kind: i0.UpdateKind.insert),
            ],
          ),
          i0.WritePropagation(
            on: i0.TableUpdateQuery.onTableName('posts',
                limitUpdateKind: i0.UpdateKind.delete),
            result: [
              i0.TableUpdate('search_in_posts', kind: i0.UpdateKind.insert),
            ],
          ),
        ],
      );
  @override
  i0.DriftDatabaseOptions get options =>
      const i0.DriftDatabaseOptions(storeDateTimeAsText: true);
}

class $DatabaseManager {
  final $Database _db;
  $DatabaseManager(this._db);
  i1.$UsersTableManager get users => i1.$UsersTableManager(_db, _db.users);
  i2.$PostsTableManager get posts => i2.$PostsTableManager(_db, _db.posts);
  i3.$SearchInPostsTableManager get searchInPosts =>
      i3.$SearchInPostsTableManager(_db, _db.searchInPosts);
  i2.$LikesTableManager get likes => i2.$LikesTableManager(_db, _db.likes);
  i1.$FollowsTableManager get follows =>
      i1.$FollowsTableManager(_db, _db.follows);
}
