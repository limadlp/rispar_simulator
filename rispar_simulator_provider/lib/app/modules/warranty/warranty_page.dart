import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/core/ui/const_colors.dart';
import 'package:rispar_simulator_provider/app/core/ui/widgets/custom_leading_app_bar.dart';
import 'package:rispar_simulator_provider/app/core/utilities/money.dart';
import 'package:rispar_simulator_provider/app/modules/warranty/warranty_controller.dart';
import 'package:rispar_simulator_provider/app/modules/warranty/widgets/installments_slider.dart';
import 'package:rispar_simulator_provider/app/modules/warranty/widgets/warranty_slider.dart';

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
        leading: const CustomLeadingAppBar(),
        title: const CustomAppBarTitle(value: 0.66),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Valor escolhido',
                  style: kHeaderTextStyleA,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  Money.moneyFormat(controller.dataInputModel?.amount ?? 0),
                  style: kMoneyTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text('Escolha a ', style: kChooseTextStyle),
                    Text('quantidade de parcelas', style: kChooseTextStyleBold),
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
                  children: [
                    Text(
                      'Escolha o ',
                      style: kChooseTextStyle,
                    ),
                    Text(
                      'percentual de garantia',
                      style: kChooseTextStyleBold,
                    ),
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
              children: [
                Text(
                  'Garantia protegida',
                  style: kHeaderTextStyleB.copyWith(
                      color: const Color(0xff0f7676)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Bitcoin caiu? Fique tranquilo! Na garantia protegida, você não recebe chamada de margem e não é liquidado.',
                  style: kWarrantyTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                TextButton(
                  onPressed: () {
                    controller.dataInputModel?.hasProtectedCollateral = false;
                    controller.getSimulationData();
                  },
                  child: Text(
                    'Continuar sem garantia',
                    style: kButtonTextStyle.copyWith(color: kMainIconColor),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.dataInputModel?.hasProtectedCollateral = true;
                      controller.getSimulationData();
                    },
                    child: Text(
                      'Adicionar garantia',
                      style: kButtonTextStyle,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
