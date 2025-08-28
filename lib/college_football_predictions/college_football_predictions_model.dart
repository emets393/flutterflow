import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'college_football_predictions_widget.dart'
    show CollegeFootballPredictionsWidget;
import 'package:flutter/material.dart';

class CollegeFootballPredictionsModel
    extends FlutterFlowModel<CollegeFootballPredictionsWidget> {
  ///  Local state fields for this page.

  List<dynamic> cfbPredictions = [];
  void addToCfbPredictions(dynamic item) => cfbPredictions.add(item);
  void removeFromCfbPredictions(dynamic item) => cfbPredictions.remove(item);
  void removeAtIndexFromCfbPredictions(int index) =>
      cfbPredictions.removeAt(index);
  void insertAtIndexInCfbPredictions(int index, dynamic item) =>
      cfbPredictions.insert(index, item);
  void updateCfbPredictionsAtIndex(int index, Function(dynamic) updateFn) =>
      cfbPredictions[index] = updateFn(cfbPredictions[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
