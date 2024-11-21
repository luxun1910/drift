// dart format width=80
// ignore_for_file: type=lint
import 'package:drift/drift.dart' as i0;
import 'package:modular/database.dart' as i1;
import 'package:modular/src/users.drift.dart' as i2;
import 'package:drift/internal/modular.dart' as i3;
import 'package:modular/src/user_queries.drift.dart' as i4;

mixin $MyAccessorMixin on i0.DatabaseAccessor<i1.Database> {
  i2.Users get users =>
      i3.ReadDatabaseContainer(attachedDatabase).resultSet<i2.Users>('users');
  i2.Follows get follows => i3.ReadDatabaseContainer(attachedDatabase)
      .resultSet<i2.Follows>('follows');
  i2.PopularUsers get popularUsers => i3.ReadDatabaseContainer(attachedDatabase)
      .resultSet<i2.PopularUsers>('popular_users');
  Future<int> addUser({required i0.Insertable<i2.User> user}) {
    var $arrayStartIndex = 1;
    final generateduser =
        $writeInsertable(this.users, user, startIndex: $arrayStartIndex);
    $arrayStartIndex += generateduser.amountOfVariables;
    return customInsert(
      'INSERT INTO users ${generateduser.sql}',
      variables: [...generateduser.introducedVariables],
      updates: {users},
    );
  }

  i4.UserQueriesDrift get userQueriesDrift =>
      i3.ReadDatabaseContainer(attachedDatabase)
          .accessor<i4.UserQueriesDrift>(i4.UserQueriesDrift.new);
}
