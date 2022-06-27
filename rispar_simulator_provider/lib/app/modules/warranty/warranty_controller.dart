import 'package:flutter/foundation.dart';
import 'package:rispar_simulator_provider/app/models/data_input_model.dart';

class WarrantyController extends ChangeNotifier {
  DataInputModel? dataInputModel;
  double _installmentsSlider = 3;
  double _warrantySlider = 35;

  double get installmentsSlider {
    return _installmentsSlider;
  }

  set installmentsSlider(double value) {
    _installmentsSlider = value;
    notifyListeners();
  }

  double get warrantySlider {
    return _warrantySlider;
  }

  set warrantySlider(double value) {
    _warrantySlider = value;
    notifyListeners();
  }
}
