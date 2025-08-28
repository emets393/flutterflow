import '../database.dart';

class CustomModelsTable extends SupabaseTable<CustomModelsRow> {
  @override
  String get tableName => 'custom_models';

  @override
  CustomModelsRow createRow(Map<String, dynamic> data) => CustomModelsRow(data);
}

class CustomModelsRow extends SupabaseDataRow {
  CustomModelsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CustomModelsTable();

  String get modelId => getField<String>('model_id')!;
  set modelId(String value) => setField<String>('model_id', value);

  String get modelName => getField<String>('model_name')!;
  set modelName(String value) => setField<String>('model_name', value);

  List<String> get selectedFeatures =>
      getListField<String>('selected_features');
  set selectedFeatures(List<String> value) =>
      setListField<String>('selected_features', value);

  String get target => getField<String>('target')!;
  set target(String value) => setField<String>('target', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
