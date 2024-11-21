import 'dart:html';

import 'package:drift/wasm.dart';

void main() async {
  final btn = querySelector('#drift-compat-btn')!;
  final results = querySelector('#drift-compat-results')!;

  await for (final _ in btn.onClick) {
    btn.attributes['disabled'] = 'true';
    results.innerText = '';

    try {
      final db = await WasmDatabase.open(
        databaseName: 'test_db',
        // These URLs need to be absolute because we're serving this JS file
        // under `/web`.
        sqlite3Uri: Uri.parse('/sqlite3.wasm'),
        driftWorkerUri: Uri.parse('/drift_worker.dart.js'),
      );

      results.innerText += '''
Chosen implementation: ${db.chosenImplementation}
Features missing: ${db.missingFeatures}
''';
    } catch (e, s) {
      results.innerText += 'Error: $e, Trace: \n$s';
    } finally {
      btn.attributes.remove('disabled');
    }
  }
}
