import 'package:flutter/material.dart';
import 'package:rispar_simulator_provider/app/modules/home/home_controller.dart';

import 'widgets/home_button.dart';
import 'widgets/home_email_form.dart';
import 'widgets/home_header.dart';
import 'widgets/home_name_form.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController;

  HomePage({Key? key, required HomeController homeController})
      : _homeController = homeController,
        super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 40,
            ),
            children: [
              HomeHeader(),
              HomeNameForm(),
              HomeEmailForm(),
              HomeButton(formKey: _formKey),
            ],
          ),
        ),
      ),
    );
  }
}
