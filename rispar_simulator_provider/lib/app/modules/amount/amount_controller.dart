import 'package:flutter/foundation.dart';
import 'package:rispar_simulator_provider/app/models/data_input_model.dart';

class AmountController extends ChangeNotifier {
  DataInputModel? dataInputModel;

  bool isButtonActive = true;
  bool isValueFilled = false;

  void changeButtonActive() {
    if (isValueFilled) {
      isButtonActive = true;
    } else {
      isButtonActive = false;
    }
    notifyListeners();
  }
}
