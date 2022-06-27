import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/core/ui/text_styles.dart';
import 'package:rispar_simulator_provider/app/modules/home/home_controller.dart';

class HomeNameForm extends StatelessWidget {
  const HomeNameForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<HomeController>();
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Qual seu ',
              style: kTextStyleA,
            ),
            Text(
              'nome completo?',
              style: kTextStyleABold,
            ),
          ],
        ),
        TextFormField(
          decoration: const InputDecoration(hintText: 'Nome Completo'),
          validator: (name) {
            //TODO: Name validator another file
            if (name!.isEmpty) {
              return 'Campo obrigatório';
            } else if (name.trim().split(' ').length <= 1) {
              return 'Preencha seu nome completo';
            }
            return null;
          },
          onSaved: (value) => controller.dataInputModel.fullname = value ?? '',
          onChanged: (value) {
            controller.isNameFilled = value.isNotEmpty;
            controller.changeButtonActive();
          },
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
