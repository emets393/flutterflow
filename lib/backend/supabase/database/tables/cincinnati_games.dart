import '../database.dart';

class CincinnatiGamesTable extends SupabaseTable<CincinnatiGamesRow> {
  @override
  String get tableName => 'cincinnati_games';

  @override
  CincinnatiGamesRow createRow(Map<String, dynamic> data) =>
      CincinnatiGamesRow(data);
}

class CincinnatiGamesRow extends SupabaseDataRow {
  CincinnatiGamesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CincinnatiGamesTable();

  String? get team => getField<String>('team');
  set team(String? value) => setField<String>('team', value);

  String? get opponent => getField<String>('opponent');
  set opponent(String? value) => setField<String>('opponent', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);

  int? get excelDate => getField<int>('excel_date');
  set excelDate(int? value) => setField<int>('excel_date', value);

  bool? get wasHome => getField<bool>('was_home');
  set wasHome(bool? value) => setField<bool>('was_home', value);

  int? get teamScore => getField<int>('team_score');
  set teamScore(int? value) => setField<int>('team_score', value);

  int? get opponentScore => getField<int>('opponent_score');
  set opponentScore(int? value) => setField<int>('opponent_score', value);

  String? get winLoss => getField<String>('win_loss');
  set winLoss(String? value) => setField<String>('win_loss', value);

  String get uniqueId => getField<String>('unique_id')!;
  set uniqueId(String value) => setField<String>('unique_id', value);

  bool? get isPlayoff => getField<bool>('is_playoff');
  set isPlayoff(bool? value) => setField<bool>('is_playoff', value);

  String? get seriesId => getField<String>('series_id');
  set seriesId(String? value) => setField<String>('series_id', value);

  int? get seriesGameNumber => getField<int>('series_game_number');
  set seriesGameNumber(int? value) =>
      setField<int>('series_game_number', value);

  int? get seriesHomeWins => getField<int>('series_home_wins');
  set seriesHomeWins(int? value) => setField<int>('series_home_wins', value);

  int? get streak => getField<int>('streak');
  set streak(int? value) => setField<int>('streak', value);

  int? get lastWin => getField<int>('last_win');
  set lastWin(int? value) => setField<int>('last_win', value);

  int? get lastRuns => getField<int>('last_runs');
  set lastRuns(int? value) => setField<int>('last_runs', value);

  int? get lastRunsAllowed => getField<int>('last_runs_allowed');
  set lastRunsAllowed(int? value) => setField<int>('last_runs_allowed', value);

  String? get joinTableString => getField<String>('join_table_string');
  set joinTableString(String? value) =>
      setField<String>('join_table_string', value);

  int? get ouResult => getField<int>('ou_result');
  set ouResult(int? value) => setField<int>('ou_result', value);

  int? get seriesOvers => getField<int>('series_overs');
  set seriesOvers(int? value) => setField<int>('series_overs', value);

  int? get seriesUnders => getField<int>('series_unders');
  set seriesUnders(int? value) => setField<int>('series_unders', value);

  int? get daysBetweenGames => getField<int>('days_between_games');
  set daysBetweenGames(int? value) =>
      setField<int>('days_between_games', value);

  double? get travelDistanceMiles => getField<double>('travel_distance_miles');
  set travelDistanceMiles(double? value) =>
      setField<double>('travel_distance_miles', value);
}
