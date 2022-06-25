import '../repositories/simulation_repository.dart';
import './simulation_service.dart';

class SimulationServiceImpl implements SimulationService {
  final SimulationRepository _simulationRepository;

  SimulationServiceImpl({
    required SimulationRepository simulationRepository,
  }) : _simulationRepository = simulationRepository;
}
