import 'package:flutter/foundation.dart';
import 'package:rispar_simulator_provider/app/models/data_input_model.dart';

class HomeController extends ChangeNotifier {
  bool isButtonActive = false;
  bool isNameFilled = false;
  bool isEmailFilled = false;

  void changeButtonActive() {
    if (isNameFilled && isEmailFilled) {
      isButtonActive = true;
    } else {
      isButtonActive = false;
    }
    notifyListeners();
  }

  void setName() {}

  void setEmail() {}

  DataInputModel dataInputModel = DataInputModel(
    fullname: '',
    email: '',
    ltv: 20,
    amount: 5000,
    term: 12,
    hasProtectedCollateral: true,
  );
}
