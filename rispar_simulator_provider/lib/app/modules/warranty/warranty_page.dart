import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/core/utilities/money.dart';
import 'package:rispar_simulator_provider/app/modules/warranty/warranty_controller.dart';
import 'package:rispar_simulator_provider/app/modules/warranty/widgets/installments_slider.dart';
import 'package:rispar_simulator_provider/app/modules/warranty/widgets/warranty_slider.dart';

import '../../core/navigator/app_navigator.dart';
import '../../core/ui/text_styles.dart';
import '../../core/ui/widgets/custom_app_bar.dart';
import '../../models/data_input_model.dart';

class WarrantyPage extends StatelessWidget {
  const WarrantyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.read<WarrantyController>();
    controller.dataInputModel =
        (ModalRoute.of(context)?.settings.arguments) as DataInputModel;

    return Scaffold(
      appBar: AppBar(
        title: const CustomAppBarTitle(value: 0.66),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Valor escolhido'),
                Text(
                  Money.moneyFormat(controller.dataInputModel?.amount ?? 0),
                  style: kMoneyTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Text('Escolha a '),
                    Text('quantidade de parcelas'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const InstallmentsSlider(),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: const [
                    Text('Escolha o '),
                    Text('percentual de garantia'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const WarrantySlider(),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Garantia Protegida'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Bitcoin caiu? Fique tranquilo! Na garantia protegida, você não recebe chamada de margem e não é liquidado.',
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    controller.dataInputModel?.hasProtectedCollateral = false;
                    AppNavigator.to.pushNamed(
                      '/warranty',
                      arguments: controller.dataInputModel,
                    );
                  },
                  child: const Text('Continuar sem garantia'),
                ),
                ElevatedButton(
                  onPressed: () {
                    controller.dataInputModel?.hasProtectedCollateral = true;
                    AppNavigator.to.pushNamed(
                      '/warranty',
                      arguments: controller.dataInputModel,
                    );
                  },
                  child: const Text('Adicionar garantia'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
