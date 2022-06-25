import 'package:flutter/material.dart';
import 'package:rispar_simulator_provider/app/modules/home/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController;

  const HomePage({Key? key, required HomeController homeController})
      : _homeController = homeController,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simulador de Crédito Rispar'),
      ),
      body: Container(),
    );
  }
}
