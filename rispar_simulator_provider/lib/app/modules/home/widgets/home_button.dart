import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/navigator/app_navigator.dart';
import '../../../core/ui/text_styles.dart';
import '../home_controller.dart';

class HomeButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const HomeButton({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Consumer<HomeController>(builder: (_, controller, __) {
        return MaterialButton(
          disabledColor: const Color(0xff7fc0c1),
          color: const Color(0xff3f9798),
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
          child: Text(
            'Continuar',
            style: kButtonTextStyle,
          ),
        );
      }),
    );
  }
}
