import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rispar_simulator_provider/app/modules/home/home_controller.dart';

import 'widgets/home_button.dart';
import 'widgets/home_email_form.dart';
import 'widgets/home_header.dart';
import 'widgets/home_image_header.dart';
import 'widgets/home_name_form.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required HomeController homeController})
      : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final availableHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: SizedBox(
            height: availableHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const HomeImageHeader(),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 40, 30, 20),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
