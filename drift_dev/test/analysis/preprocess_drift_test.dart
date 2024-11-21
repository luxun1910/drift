import 'package:drift_dev/src/analysis/preprocess_drift.dart';
import 'package:test/test.dart';

import 'test_utils.dart';

void main() {
  test('finds dart expressions', () async {
    final backend = await TestBackend.inTest({
      'a|lib/main.drift': '''
import 'foo.dart';

CREATE TABLE foo (
  bar INTEGER MAPPED BY `const MyConverter()` NOT NULL
);
''',
    });

    final result = await DriftPreprocessor.analyze(
        backend, Uri.parse('package:a/main.drift'));

    expect(result.temporaryDartFile, '''
import 'package:a/foo.dart';
var expr_0 = const MyConverter();
''');
  });

  test('only includes direct imports if no Dart expressions are used',
      () async {
    final backend = await TestBackend.inTest({
      'a|lib/main.drift': '''
import 'foo.dart';
import '2.drift';

CREATE TABLE foo (
  bar INTEGER NOT NULL
);
''',
      'a|lib/2.drift': '''
import 'bar.dart';
''',
    });

    final result = await DriftPreprocessor.analyze(
        backend, Uri.parse('package:a/main.drift'));

    expect(result.result.declaredTablesAndViews, ['foo']);
    expect(result.temporaryDartFile, "import 'package:a/foo.dart';\n");
  });

  test('finds nested dart imports', () async {
    final backend = await TestBackend.inTest({
      'a|lib/a.drift': '''
import 'b.drift';

CREATE TABLE foo (
  bar INTEGER MAPPED BY `const MyConverter()` NOT NULL
);
''',
      'a|lib/b.drift': '''
import 'c.drift';
''',
      'a|lib/c.drift': '''
import 'import.dart';
''',
    });

    final result = await DriftPreprocessor.analyze(
        backend, Uri.parse('package:a/a.drift'));

    expect(
        result.temporaryDartFile, contains("import 'package:a/import.dart';"));
  });

  test('does not throw for invalid import', () async {
    final backend = await TestBackend.inTest({
      'a|lib/a.drift': '''
import 'b.drift';
import 'does_not_exist.drift';

CREATE TABLE foo (
  bar INTEGER MAPPED BY `const MyConverter()` NOT NULL
);
''',
      'a|lib/b.drift': '''
import 'c.drift';
''',
      'a|lib/c.drift': '''
!! invalid file
''',
    });

    final result = await DriftPreprocessor.analyze(
        backend, Uri.parse('package:a/a.drift'));

    // No Dart import found, but also didn't crash analyzing
    expect(result.temporaryDartFile, isNot(contains('import')));
  });

  test('throws if entrypoint does not exist', () async {
    final backend = await TestBackend.inTest({});

    expect(
      () =>
          DriftPreprocessor.analyze(backend, Uri.parse('package:foo/bar.dart')),
      throwsA(anything),
    );
  });

  test('handles invalid entrypoint files', () async {
    final backend = await TestBackend.inTest({
      'a|lib/main.drift': '! this not a valid drift file !',
    });
    final result = await DriftPreprocessor.analyze(
        backend, Uri.parse('package:a/main.drift'));

    expect(result.temporaryDartFile, isEmpty);
  });
}
