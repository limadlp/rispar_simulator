import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rispar_simulator_provider/app/models/data_output_model.dart';
import 'package:rispar_simulator_provider/app/models/data_input_model.dart';
import './simulation_repository.dart';

class SimulationRepositoryImpl implements SimulationRepository {
  //final baseUrl = "http://10.0.2.2:3031/simulation";

  final baseUrl =
      "http://10.0.2.2:3031/simulation/e9573d4a-9121-4dde-bff8-b4fe5f4be346";
  //"http://localhost:3031/simulation/e9573d4a-9121-4dde-bff8-b4fe5f4be346";

  SimulationRepositoryImpl();

  @override
  Future<DataOutputModel> getSimulationData(
      DataInputModel dataInputModel) async {
    final response = await http.get(Uri.parse(baseUrl));

    final map = jsonDecode(response.body);
    return DataOutputModel.fromMap(map);
  }
}
