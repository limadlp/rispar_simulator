import 'package:http/http.dart' as http;
import 'package:rispar_simulator_provider/app/models/data_output_model.dart';
import 'package:rispar_simulator_provider/app/models/data_input_model.dart';
import './simulation_repository.dart';

class SimulationRepositoryImpl implements SimulationRepository {
  final baseUrl = 'https://api.rispar.com.br/acquisition/simulation';

  SimulationRepositoryImpl();

  @override
  Future<DataOutputModel> getSimulationData(
      DataInputModel dataInputModel) async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: dataInputModel.toJson(),
    );

    if (response.statusCode == 201) {
      return DataOutputModel.fromJson(response.body);
    } else {
      return Future.error('Erro ${response.statusCode}');
      //throw Exception();
    }
  }
}
