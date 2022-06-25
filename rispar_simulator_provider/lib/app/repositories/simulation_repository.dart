import 'package:rispar_simulator_provider/app/models/data_output_model.dart';

import '../models/data_input_model.dart';

abstract class SimulationRepository {
  Future<DataOutputModel> getSimulationData(DataInputModel dataInputModel);
}
