import 'dart:developer';

import 'package:asuka/asuka.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rispar_simulator_provider/app/models/data_input_model.dart';
import 'package:rispar_simulator_provider/app/models/data_output_model.dart';
import 'package:rispar_simulator_provider/app/services/simulation_service.dart';

import '../../core/navigator/app_navigator.dart';

class WarrantyController extends ChangeNotifier {
  final SimulationService _simulationService;

  DataInputModel? dataInputModel;
  DataOutputModel? dataOutputModel;

  double _installmentsSlider = 3;
  double _warrantySlider = 35;

  WarrantyController({
    required SimulationService simulationService,
  }) : _simulationService = simulationService;

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

  Future<void> getSimulationData() async {
    AppNavigator.to.pushNamed(
      '/wait',
      arguments: dataInputModel,
    );
    //TODO: Tratar erros
    await Future.delayed(const Duration(seconds: 2), () {});

    try {
      dataOutputModel =
          await _simulationService.getSimulationData(dataInputModel!);

      AppNavigator.to.pushReplacementNamed(
        '/result',
        arguments: dataOutputModel,
      );
    } catch (e, s) {
      log(
        'Repository Exception',
        error: e.toString(),
        stackTrace: s,
      );
      AsukaSnackbar.alert("Erro ao acessar o servidor. Tente novamente!")
          .show();
      AppNavigator.to.pop();
    }
  }
}
