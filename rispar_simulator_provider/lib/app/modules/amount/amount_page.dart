import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/core/ui/text_styles.dart';
import 'package:rispar_simulator_provider/app/core/ui/widgets/custom_app_bar.dart';
import 'package:rispar_simulator_provider/app/models/data_input_model.dart';
import '../../core/navigator/app_navigator.dart';
import 'amount_controller.dart';

class AmountPage extends StatelessWidget {
  final AmountController _amountController;

  AmountPage({Key? key, required AmountController amountController})
      : _amountController = amountController,
        super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _amountController.dataInputModel =
        (ModalRoute.of(context)?.settings.arguments) as DataInputModel;

    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBarTitle(value: 0.33),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'De quanto ',
                      style: kHeaderTextStyleB,
                    ),
                    Text(
                      'você precisa?',
                      style: kHeaderTextStyleA,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text('Insira um valor entre '),
                    Text("R\$1000 a R\$300.000"),
                  ],
                ),
              ],
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                initialValue: "1000",
                decoration: const InputDecoration(hintText: "R\$ 1000"),
                validator: (value) {
                  //TODO: Name validator another file
                  if (value!.isEmpty) {
                    return 'Insira um valor';
                  }
                  //TODO: Implement value verification
                  else if (int.parse(value) < 1000 ||
                      int.parse(value) > 300000) {
                    return "O valor deve estar entre R\$1.000 e R\$300.000";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                onSaved: (value) => _amountController.dataInputModel!.amount =
                    double.parse(value!),
                onChanged: (value) {
                  _amountController.isValueFilled = value.isNotEmpty;
                  _amountController.changeButtonActive();
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: Consumer<AmountController>(builder: (_, controller, __) {
                return ElevatedButton(
                  onPressed: controller.isButtonActive
                      ? () {
                          if (_formKey.currentState?.validate() ?? false) {
                            _formKey.currentState!.save();
                            AppNavigator.to.pushNamed(
                              '/warranty',
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
        ),
      ),
    );
  }
}
