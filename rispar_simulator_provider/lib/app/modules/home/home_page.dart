import 'package:flutter/material.dart';
import 'package:rispar_simulator_provider/app/modules/home/home_controller.dart';

import 'widgets/home_button.dart';
import 'widgets/home_email_form.dart';
import 'widgets/home_header.dart';
import 'widgets/home_image_header.dart';
import 'widgets/home_name_form.dart';

class HomePage extends StatelessWidget {
  final HomeController _homeController;

  HomePage({Key? key, required HomeController homeController})
      : _homeController = homeController,
        super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final availableHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;

    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: SizedBox(
              height: availableHeight,
              child: Column(
                children: [
                  const HomeImageHeader(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 40,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const HomeHeader(),
                        Column(
                          children: const [
                            HomeNameForm(),
                            HomeEmailForm(),
                          ],
                        ),
                        HomeButton(formKey: _formKey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
