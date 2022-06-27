import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/core/ui/text_styles.dart';
import 'package:validatorless/validatorless.dart';

import '../home_controller.dart';

class HomeEmailForm extends StatelessWidget {
  const HomeEmailForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<HomeController>();
    return Column(
      children: [
        Row(
          children: [
            Text(
              'E seu ',
              style: kTextStyleA,
            ),
            Text(
              'e-mail?',
              style: kTextStyleABold,
            ),
          ],
        ),
        TextFormField(
          style: kTextStyleA,
          decoration: InputDecoration(
            hintText: 'seuemail@email.com',
            hintStyle: kHintStyle,
          ),
          initialValue: controller.dataInputModel.email == ''
              ? null
              : controller.dataInputModel.email,
          validator: Validatorless.multiple([
            Validatorless.email('email inválido'),
            Validatorless.required("Campo obrigatório"),
          ]),
          onSaved: (value) => controller.dataInputModel.email = value ?? '',
          onChanged: (value) {
            controller.isEmailFilled = value.isNotEmpty;
            controller.changeButtonActive();
          },
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
