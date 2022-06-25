import 'package:rispar_simulator_provider/app/models/data_output_model.dart';

import 'package:rispar_simulator_provider/app/models/data_input_model.dart';

import '../repositories/simulation_repository.dart';
import './simulation_service.dart';

class SimulationServiceImpl implements SimulationService {
  final SimulationRepository _simulationRepository;

  SimulationServiceImpl({
    required SimulationRepository simulationRepository,
  }) : _simulationRepository = simulationRepository;

  @override
  Future<DataOutputModel> getSimulationData(DataInputModel dataInputModel) =>
      _simulationRepository.getSimulationData(dataInputModel);
}
