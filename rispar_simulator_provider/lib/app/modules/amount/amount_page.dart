import 'package:flutter/material.dart';
import 'package:rispar_simulator_provider/app/core/ui/text_styles.dart';
import 'package:rispar_simulator_provider/app/core/ui/widgets/custom_app_bar.dart';
import 'package:rispar_simulator_provider/app/models/data_input_model.dart';
import '../../core/ui/const_colors.dart';
import 'amount_controller.dart';

class AmountPage extends StatelessWidget {
  final AmountController _amountController;

  const AmountPage({Key? key, required AmountController amountController})
      : _amountController = amountController,
        super(key: key);

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
                  children: const [
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
            TextFormField(),
            ElevatedButton(
              onPressed: () {},
              child: Text('Continuar'),
            ),
          ],
        ),
      ),
    );
  }
}
