import '../database.dart';

class DraftkingsLinesTable extends SupabaseTable<DraftkingsLinesRow> {
  @override
  String get tableName => 'draftkings_lines';

  @override
  DraftkingsLinesRow createRow(Map<String, dynamic> data) =>
      DraftkingsLinesRow(data);
}

class DraftkingsLinesRow extends SupabaseDataRow {
  DraftkingsLinesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DraftkingsLinesTable();

  String get uniqueId => getField<String>('unique_id')!;
  set uniqueId(String value) => setField<String>('unique_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get awayTeam => getField<String>('away_team');
  set awayTeam(String? value) => setField<String>('away_team', value);

  String? get homeTeam => getField<String>('home_team');
  set homeTeam(String? value) => setField<String>('home_team', value);

  int? get moneyAway => getField<int>('money_away');
  set moneyAway(int? value) => setField<int>('money_away', value);

  int? get moneyHome => getField<int>('money_home');
  set moneyHome(int? value) => setField<int>('money_home', value);

  double? get handleAway => getField<double>('handle_away');
  set handleAway(double? value) => setField<double>('handle_away', value);

  double? get handleHome => getField<double>('handle_home');
  set handleHome(double? value) => setField<double>('handle_home', value);

  double? get betsAway => getField<double>('bets_away');
  set betsAway(double? value) => setField<double>('bets_away', value);

  double? get betsHome => getField<double>('bets_home');
  set betsHome(double? value) => setField<double>('bets_home', value);

  double? get rlAway => getField<double>('rl_away');
  set rlAway(double? value) => setField<double>('rl_away', value);

  double? get rlHome => getField<double>('rl_home');
  set rlHome(double? value) => setField<double>('rl_home', value);

  double? get rlHandleAway => getField<double>('rl_handle_away');
  set rlHandleAway(double? value) => setField<double>('rl_handle_away', value);

  double? get rlHandleHome => getField<double>('rl_handle_home');
  set rlHandleHome(double? value) => setField<double>('rl_handle_home', value);

  double? get rlBetsAway => getField<double>('rl_bets_away');
  set rlBetsAway(double? value) => setField<double>('rl_bets_away', value);

  double? get rlBetsHome => getField<double>('rl_bets_home');
  set rlBetsHome(double? value) => setField<double>('rl_bets_home', value);

  double? get oULine => getField<double>('o_u_line');
  set oULine(double? value) => setField<double>('o_u_line', value);

  DateTime? get importTime => getField<DateTime>('import_time');
  set importTime(DateTime? value) => setField<DateTime>('import_time', value);

  double? get ouHandleOver => getField<double>('ou_handle_over');
  set ouHandleOver(double? value) => setField<double>('ou_handle_over', value);

  double? get ouBetsOver => getField<double>('ou_bets_over');
  set ouBetsOver(double? value) => setField<double>('ou_bets_over', value);
}
