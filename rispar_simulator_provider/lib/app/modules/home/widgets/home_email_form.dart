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
          children: const [
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
          decoration: const InputDecoration(
            hintText: 'seuemail@email.com',
          ),
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
      ],
    );
  }
}
