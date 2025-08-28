import '../database.dart';

class PitcherIdsTable extends SupabaseTable<PitcherIdsRow> {
  @override
  String get tableName => 'pitcher_ids';

  @override
  PitcherIdsRow createRow(Map<String, dynamic> data) => PitcherIdsRow(data);
}

class PitcherIdsRow extends SupabaseDataRow {
  PitcherIdsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PitcherIdsTable();

  String get pitcherName => getField<String>('pitcher_name')!;
  set pitcherName(String value) => setField<String>('pitcher_name', value);

  int? get pitcherId => getField<int>('pitcher_id');
  set pitcherId(int? value) => setField<int>('pitcher_id', value);
}
