import '../database.dart';

class CircaLinesTable extends SupabaseTable<CircaLinesRow> {
  @override
  String get tableName => 'circa_lines';

  @override
  CircaLinesRow createRow(Map<String, dynamic> data) => CircaLinesRow(data);
}

class CircaLinesRow extends SupabaseDataRow {
  CircaLinesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CircaLinesTable();

  String get uniqueId => getField<String>('unique_id')!;
  set uniqueId(String value) => setField<String>('unique_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  String? get awayTeam => getField<String>('Away_Team');
  set awayTeam(String? value) => setField<String>('Away_Team', value);

  String? get homeTeam => getField<String>('Home_Team');
  set homeTeam(String? value) => setField<String>('Home_Team', value);

  int? get moneyAway => getField<int>('Money_Away');
  set moneyAway(int? value) => setField<int>('Money_Away', value);

  int? get moneyHome => getField<int>('Money_Home');
  set moneyHome(int? value) => setField<int>('Money_Home', value);

  double? get handleAway => getField<double>('Handle_Away');
  set handleAway(double? value) => setField<double>('Handle_Away', value);

  double? get handleHome => getField<double>('Handle_Home');
  set handleHome(double? value) => setField<double>('Handle_Home', value);

  double? get betsAway => getField<double>('Bets_Away');
  set betsAway(double? value) => setField<double>('Bets_Away', value);

  double? get betsHome => getField<double>('Bets_Home');
  set betsHome(double? value) => setField<double>('Bets_Home', value);

  double? get rLAway => getField<double>('RL_Away');
  set rLAway(double? value) => setField<double>('RL_Away', value);

  double? get rLHome => getField<double>('RL_Home');
  set rLHome(double? value) => setField<double>('RL_Home', value);

  double? get rLHandleAway => getField<double>('RL_Handle_Away');
  set rLHandleAway(double? value) => setField<double>('RL_Handle_Away', value);

  double? get rLHandleHome => getField<double>('RL_Handle_Home');
  set rLHandleHome(double? value) => setField<double>('RL_Handle_Home', value);

  double? get rLBetsAway => getField<double>('RL_Bets_Away');
  set rLBetsAway(double? value) => setField<double>('RL_Bets_Away', value);

  double? get rLBetsHome => getField<double>('RL_Bets_Home');
  set rLBetsHome(double? value) => setField<double>('RL_Bets_Home', value);

  String? get circaMlPrediction => getField<String>('circa_ml_prediction');
  set circaMlPrediction(String? value) =>
      setField<String>('circa_ml_prediction', value);

  String? get circaMlPredictionStrength =>
      getField<String>('circa_ml_prediction_strength');
  set circaMlPredictionStrength(String? value) =>
      setField<String>('circa_ml_prediction_strength', value);

  String? get circaRlPrediction => getField<String>('circa_rl_prediction');
  set circaRlPrediction(String? value) =>
      setField<String>('circa_rl_prediction', value);

  String? get circaRlPredictionStrength =>
      getField<String>('circa_rl_prediction_strength');
  set circaRlPredictionStrength(String? value) =>
      setField<String>('circa_rl_prediction_strength', value);

  String? get circaTotalPrediction =>
      getField<String>('circa_total_prediction');
  set circaTotalPrediction(String? value) =>
      setField<String>('circa_total_prediction', value);

  String? get circaTotalPredictionStrength =>
      getField<String>('circa_total_prediction_strength');
  set circaTotalPredictionStrength(String? value) =>
      setField<String>('circa_total_prediction_strength', value);

  double? get totalOverHandle => getField<double>('Total_Over_Handle');
  set totalOverHandle(double? value) =>
      setField<double>('Total_Over_Handle', value);

  double? get totalUnderHandle => getField<double>('Total_Under_Handle');
  set totalUnderHandle(double? value) =>
      setField<double>('Total_Under_Handle', value);

  double? get totalOverBets => getField<double>('Total_Over_Bets');
  set totalOverBets(double? value) =>
      setField<double>('Total_Over_Bets', value);

  double? get totalUnderBets => getField<double>('Total_Under_Bets');
  set totalUnderBets(double? value) =>
      setField<double>('Total_Under_Bets', value);
}
