import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/app_widget.dart';

import 'repositories/simulation_repository.dart';
import 'repositories/simulation_repository_impl.dart';
import 'services/simulation_service.dart';
import 'services/simulation_service_impl.dart';

class AppModule extends StatelessWidget {
  const AppModule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SimulationRepository>(
          create: (context) => SimulationRepositoryImpl(),
        ),
        Provider<SimulationService>(
          create: (context) => SimulationServiceImpl(
            simulationRepository: context.read(),
          ),
        ),
      ],
      child: const AppWidget(),
    );
  }
}
