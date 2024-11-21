// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../analysis/options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DriftOptions _$DriftOptionsFromJson(Map json) => $checkedCreate(
      'DriftOptions',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'write_from_json_string_constructor',
            'override_hash_and_equals_in_result_sets',
            'skip_verification_code',
            'use_data_class_name_for_companions',
            'use_column_name_as_json_key_when_defined_in_moor_file',
            'use_sql_column_name_as_json_key',
            'generate_connect_constructor',
            'generate_manager',
            'sqlite_modules',
            'sqlite',
            'sql',
            'data_class_to_companions',
            'mutable_classes',
            'row_class_constructor_all_required',
            'raw_result_set_data',
            'apply_converters_on_variables',
            'generate_values_in_copy_with',
            'named_parameters',
            'named_parameters_always_required',
            'scoped_dart_components',
            'store_date_time_values_as_text',
            'case_from_dart_to_sql',
            'write_to_columns_mixins',
            'assume_correct_reference',
            'has_separate_analyzer',
            'preamble',
            'fatal_warnings',
            'schema_dir',
            'test_dir',
            'databases'
          ],
        );
        final val = DriftOptions(
          generateFromJsonStringConstructor: $checkedConvert(
              'write_from_json_string_constructor', (v) => v as bool? ?? false),
          overrideHashAndEqualsInResultSets: $checkedConvert(
              'override_hash_and_equals_in_result_sets',
              (v) => v as bool? ?? false),
          skipVerificationCode: $checkedConvert(
              'skip_verification_code', (v) => v as bool? ?? false),
          useDataClassNameForCompanions: $checkedConvert(
              'use_data_class_name_for_companions', (v) => v as bool? ?? false),
          useColumnNameAsJsonKeyWhenDefinedInMoorFile: $checkedConvert(
              'use_column_name_as_json_key_when_defined_in_moor_file',
              (v) => v as bool? ?? true),
          useSqlColumnNameAsJsonKey: $checkedConvert(
              'use_sql_column_name_as_json_key', (v) => v as bool? ?? false),
          generateConnectConstructor: $checkedConvert(
              'generate_connect_constructor', (v) => v as bool? ?? false),
          generateManager:
              $checkedConvert('generate_manager', (v) => v as bool? ?? true),
          dataClassToCompanions: $checkedConvert(
              'data_class_to_companions', (v) => v as bool? ?? true),
          generateMutableClasses:
              $checkedConvert('mutable_classes', (v) => v as bool? ?? false),
          rowClassConstructorAllRequired: $checkedConvert(
              'row_class_constructor_all_required', (v) => v as bool? ?? false),
          rawResultSetData: $checkedConvert(
              'raw_result_set_data', (v) => v as bool? ?? false),
          applyConvertersOnVariables: $checkedConvert(
              'apply_converters_on_variables', (v) => v as bool? ?? true),
          generateValuesInCopyWith: $checkedConvert(
              'generate_values_in_copy_with', (v) => v as bool? ?? true),
          generateNamedParameters:
              $checkedConvert('named_parameters', (v) => v as bool? ?? false),
          namedParametersAlwaysRequired: $checkedConvert(
              'named_parameters_always_required', (v) => v as bool? ?? false),
          scopedDartComponents: $checkedConvert(
              'scoped_dart_components', (v) => v as bool? ?? true),
          modules: $checkedConvert(
              'sqlite_modules',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => $enumDecode(_$SqlModuleEnumMap, e))
                      .toList() ??
                  []),
          sqliteAnalysisOptions: $checkedConvert(
              'sqlite',
              (v) =>
                  v == null ? null : SqliteAnalysisOptions.fromJson(v as Map)),
          storeDateTimeValuesAsText: $checkedConvert(
              'store_date_time_values_as_text', (v) => v as bool? ?? false),
          caseFromDartToSql: $checkedConvert(
              'case_from_dart_to_sql',
              (v) =>
                  $enumDecodeNullable(_$CaseFromDartToSqlEnumMap, v) ??
                  CaseFromDartToSql.snake),
          writeToColumnsMixins: $checkedConvert(
              'write_to_columns_mixins', (v) => v as bool? ?? false),
          fatalWarnings:
              $checkedConvert('fatal_warnings', (v) => v as bool? ?? false),
          preamble: $checkedConvert('preamble', (v) => v as String?),
          hasDriftAnalyzer: $checkedConvert(
              'has_separate_analyzer', (v) => v as bool? ?? false),
          assumeCorrectReference: $checkedConvert(
              'assume_correct_reference', (v) => v as bool? ?? false),
          dialect: $checkedConvert('sql',
              (v) => v == null ? null : DialectOptions.fromJson(v as Map)),
          schemaDir: $checkedConvert(
              'schema_dir', (v) => v as String? ?? 'drift_schemas'),
          testDir:
              $checkedConvert('test_dir', (v) => v as String? ?? 'test/drift'),
          databases: $checkedConvert(
              'databases',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(k as String, e as String),
                  ) ??
                  {}),
        );
        return val;
      },
      fieldKeyMap: const {
        'generateFromJsonStringConstructor':
            'write_from_json_string_constructor',
        'overrideHashAndEqualsInResultSets':
            'override_hash_and_equals_in_result_sets',
        'skipVerificationCode': 'skip_verification_code',
        'useDataClassNameForCompanions': 'use_data_class_name_for_companions',
        'useColumnNameAsJsonKeyWhenDefinedInMoorFile':
            'use_column_name_as_json_key_when_defined_in_moor_file',
        'useSqlColumnNameAsJsonKey': 'use_sql_column_name_as_json_key',
        'generateConnectConstructor': 'generate_connect_constructor',
        'generateManager': 'generate_manager',
        'dataClassToCompanions': 'data_class_to_companions',
        'generateMutableClasses': 'mutable_classes',
        'rowClassConstructorAllRequired': 'row_class_constructor_all_required',
        'rawResultSetData': 'raw_result_set_data',
        'applyConvertersOnVariables': 'apply_converters_on_variables',
        'generateValuesInCopyWith': 'generate_values_in_copy_with',
        'generateNamedParameters': 'named_parameters',
        'namedParametersAlwaysRequired': 'named_parameters_always_required',
        'scopedDartComponents': 'scoped_dart_components',
        'modules': 'sqlite_modules',
        'sqliteAnalysisOptions': 'sqlite',
        'storeDateTimeValuesAsText': 'store_date_time_values_as_text',
        'caseFromDartToSql': 'case_from_dart_to_sql',
        'writeToColumnsMixins': 'write_to_columns_mixins',
        'fatalWarnings': 'fatal_warnings',
        'hasDriftAnalyzer': 'has_separate_analyzer',
        'assumeCorrectReference': 'assume_correct_reference',
        'dialect': 'sql',
        'schemaDir': 'schema_dir',
        'testDir': 'test_dir'
      },
    );

Map<String, dynamic> _$DriftOptionsToJson(DriftOptions instance) =>
    <String, dynamic>{
      'write_from_json_string_constructor':
          instance.generateFromJsonStringConstructor,
      'override_hash_and_equals_in_result_sets':
          instance.overrideHashAndEqualsInResultSets,
      'skip_verification_code': instance.skipVerificationCode,
      'use_data_class_name_for_companions':
          instance.useDataClassNameForCompanions,
      'use_column_name_as_json_key_when_defined_in_moor_file':
          instance.useColumnNameAsJsonKeyWhenDefinedInMoorFile,
      'use_sql_column_name_as_json_key': instance.useSqlColumnNameAsJsonKey,
      'generate_connect_constructor': instance.generateConnectConstructor,
      'generate_manager': instance.generateManager,
      'sqlite_modules':
          instance.modules.map((e) => _$SqlModuleEnumMap[e]!).toList(),
      'sqlite': instance.sqliteAnalysisOptions?.toJson(),
      'sql': instance.dialect?.toJson(),
      'data_class_to_companions': instance.dataClassToCompanions,
      'mutable_classes': instance.generateMutableClasses,
      'row_class_constructor_all_required':
          instance.rowClassConstructorAllRequired,
      'raw_result_set_data': instance.rawResultSetData,
      'apply_converters_on_variables': instance.applyConvertersOnVariables,
      'generate_values_in_copy_with': instance.generateValuesInCopyWith,
      'named_parameters': instance.generateNamedParameters,
      'named_parameters_always_required':
          instance.namedParametersAlwaysRequired,
      'scoped_dart_components': instance.scopedDartComponents,
      'store_date_time_values_as_text': instance.storeDateTimeValuesAsText,
      'case_from_dart_to_sql':
          _$CaseFromDartToSqlEnumMap[instance.caseFromDartToSql]!,
      'write_to_columns_mixins': instance.writeToColumnsMixins,
      'assume_correct_reference': instance.assumeCorrectReference,
      'has_separate_analyzer': instance.hasDriftAnalyzer,
      'preamble': instance.preamble,
      'fatal_warnings': instance.fatalWarnings,
      'schema_dir': instance.schemaDir,
      'test_dir': instance.testDir,
      'databases': instance.databases,
    };

const _$SqlModuleEnumMap = {
  SqlModule.json1: 'json1',
  SqlModule.fts5: 'fts5',
  SqlModule.moor_ffi: 'moor_ffi',
  SqlModule.math: 'math',
  SqlModule.rtree: 'rtree',
  SqlModule.spellfix1: 'spellfix1',
  SqlModule.geopoly: 'geopoly',
  SqlModule.dbstat: 'dbstat',
};

const _$CaseFromDartToSqlEnumMap = {
  CaseFromDartToSql.preserve: 'preserve',
  CaseFromDartToSql.camel: 'camelCase',
  CaseFromDartToSql.constant: 'CONSTANT_CASE',
  CaseFromDartToSql.snake: 'snake_case',
  CaseFromDartToSql.pascal: 'PascalCase',
  CaseFromDartToSql.lower: 'lowercase',
  CaseFromDartToSql.upper: 'UPPERCASE',
};

DialectOptions _$DialectOptionsFromJson(Map json) => $checkedCreate(
      'DialectOptions',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['dialect', 'dialects', 'options'],
        );
        final val = DialectOptions(
          $checkedConvert(
              'dialect', (v) => $enumDecodeNullable(_$SqlDialectEnumMap, v)),
          $checkedConvert(
              'dialects',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => $enumDecode(_$SqlDialectEnumMap, e))
                  .toList()),
          $checkedConvert(
              'options',
              (v) =>
                  v == null ? null : SqliteAnalysisOptions.fromJson(v as Map)),
        );
        return val;
      },
    );

Map<String, dynamic> _$DialectOptionsToJson(DialectOptions instance) =>
    <String, dynamic>{
      'dialect': _$SqlDialectEnumMap[instance.dialect],
      'dialects':
          instance.dialects?.map((e) => _$SqlDialectEnumMap[e]!).toList(),
      'options': instance.options?.toJson(),
    };

const _$SqlDialectEnumMap = {
  SqlDialect.sqlite: 'sqlite',
  SqlDialect.mysql: 'mysql',
  SqlDialect.postgres: 'postgres',
  SqlDialect.mariadb: 'mariadb',
};

SqliteAnalysisOptions _$SqliteAnalysisOptionsFromJson(Map json) =>
    $checkedCreate(
      'SqliteAnalysisOptions',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['modules', 'version', 'known_functions'],
        );
        final val = SqliteAnalysisOptions(
          modules: $checkedConvert(
              'modules',
              (v) =>
                  (v as List<dynamic>?)
                      ?.map((e) => $enumDecode(_$SqlModuleEnumMap, e))
                      .toList() ??
                  const []),
          version: $checkedConvert(
              'version',
              (v) => _$JsonConverterFromJson<String, SqliteVersion>(
                  v, const _SqliteVersionConverter().fromJson)),
          knownFunctions: $checkedConvert(
              'known_functions',
              (v) =>
                  (v as Map?)?.map(
                    (k, e) => MapEntry(
                        k as String, KnownSqliteFunction.fromJson(e as String)),
                  ) ??
                  const {}),
        );
        return val;
      },
      fieldKeyMap: const {'knownFunctions': 'known_functions'},
    );

Map<String, dynamic> _$SqliteAnalysisOptionsToJson(
        SqliteAnalysisOptions instance) =>
    <String, dynamic>{
      'modules': instance.modules.map((e) => _$SqlModuleEnumMap[e]!).toList(),
      'version': _$JsonConverterToJson<String, SqliteVersion>(
          instance.version, const _SqliteVersionConverter().toJson),
      'known_functions':
          instance.knownFunctions.map((k, e) => MapEntry(k, e.toJson())),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
