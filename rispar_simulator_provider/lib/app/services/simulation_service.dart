import '../models/data_input_model.dart';
import '../models/data_output_model.dart';

abstract class SimulationService {
  Future<DataOutputModel> getSimulationData(DataInputModel dataInputModel);
}
