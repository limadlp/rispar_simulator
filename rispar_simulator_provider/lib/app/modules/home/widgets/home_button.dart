import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/navigator/app_navigator.dart';
import '../home_controller.dart';

class HomeButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const HomeButton({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        // const SizedBox(
        //   height: 40,
        // ),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: Consumer<HomeController>(builder: (_, controller, __) {
            return ElevatedButton(
              onPressed: controller.isButtonActive
                  ? () {
                      if (formKey.currentState?.validate() ?? false) {
                        formKey.currentState!.save();
                        AppNavigator.to.pushNamed(
                          '/amount',
                          arguments: controller.dataInputModel,
                        );
                      }
                    }
                  : null,
              child: const Text('Continuar'),
            );
          }),
        ),
      ],
    );
  }
}
