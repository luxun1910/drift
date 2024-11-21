---

title: Custom SQL types
description: Use custom SQL types in Drift files and Dart code.

---



Drift's core library is written with sqlite3 as a primary target. This is
reflected in the [SQL types][types] drift supports out of the box - these
types supported by sqlite3 with a few additions that are handled in Dart.

Other databases for which drift has limited support commonly support more types.
For instance, postgres has a dedicated type for durations, JSON values, UUIDs
and more. With a sqlite3 database, you'd use a [type converter][type converters]
to store these values with the types supported by sqlite3.
While type converters can also work here, they tell drift to use a regular text
column under the hood. When a database has builtin support for UUIDs for instance,
this could lead to less efficient statements or issues with other applications
talking to same database.
For this reason, drift allows the use of "custom types" - types that are not defined
in the core `drift` package and don't work with all databases.

!!! note "When to use custom types - summary"

    
    Custom types are a good tool when extending drift support to new database engines
    with their own types not already covered by drift.
    
    Unless you're extending drift to work with a new database package (which is awesome,
    please reach out!), you probably don't need to implement custom types yourself.
    Packages like `drift_postgres` already define relevant custom types for you.
    



## Defining a type

As an example, let's assume we have a database with native support for `Duration`
values via the `interval` type. We're using a database driver that also has native
support for `Duration` values, meaning that they can be passed to the database in
prepared statements and also be read from rows without manual conversions.

In that case, a custom type class to implement `Duration` support for drift would be
added:

{{ load_snippet('duration','lib/snippets/modular/custom_types/type.dart.excerpt.json') }}

This type defines the following things:

- When `Duration` values are mapped to SQL literals (for instance, because they're used in `Constant`s),
  we represent them as `interval '123754 microseconds'` in SQL.
- When a `Duration` value is mapped to a parameter, we just use the value directly (since we
  assume it is supported by the underlying database driver here).
- Similarly, we expect that the database driver correctly returns durations as instances of
  `Duration`, so the other way around in `read` also just casts the value.
- The name to use in `CREATE TABLE` statements and casts is `interval`.

## Using custom types

### In Dart

To define a custom type on a Dart table, use the `customType` column builder method with the type:



{{ load_snippet('(full)','lib/snippets/modular/custom_types/table.dart.excerpt.json') }}

As the example shows, other column constraints like `clientDefault` can still be added to custom
columns. You can even combine custom columns and type converters if needed.

This is enough to get most queries to work, but in some advanced scenarios you may have to provide
more information to use custom types.
For instance, when manually constructing a `Variable` or a `Constant` with a custom type, the custom
type must be added as a second parameter to the constructor. This is because, unlike for builtin types,
drift doesn't have a central register describing how to deal with custom type values.

### In SQL

In SQL, Drift's [inline Dart](drift_files.md#dart-interop) syntax may be used to define
the custom type:



{{ load_snippet('(full)','lib/snippets/modular/custom_types/drift_table.drift.excerpt.json') }}

Please note that support for custom types in drift files is currently limited.
For instance, custom types are not currently supported in `CAST` expressions.
If you are interested in advanced analysis support for custom types, please reach out by
opening an issue or a discussion describing your use-cases, thanks!

## Dialect awareness

When defining custom types for SQL types only supported on some database management systems, your
database will _only_ work with those database systems. For instance, any table using the `DurationType`
defined above will not work with sqlite3 since it uses an `interval` type interpreted as an integer
by sqlite3 - and the `interval xyz microseconds` syntax is not supported by sqlite3 at all.

Starting with drift 2.15, it is possible to define custom types that behave differently depending on
the dialect used.
This can be used to build polyfills for other database systems. First, consider a custom type storing
durations as integers, similar to what a type converter might do:

{{ load_snippet('fallback','lib/snippets/modular/custom_types/type.dart.excerpt.json') }}

By using a `DialectAwareSqlType`, you can automatically use the `interval` type on PostgreSQL databases
while falling back to an integer type on sqlite3 and other databases:

```dart
  Column<Duration> get frequency => customType(durationType)
      .clientDefault(() => Duration(minutes: 15))();
```