import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/core/ui/text_styles.dart';
import 'package:rispar_simulator_provider/app/core/ui/widgets/custom_app_bar.dart';
import 'package:rispar_simulator_provider/app/core/ui/widgets/custom_leading_app_bar.dart';
import 'package:rispar_simulator_provider/app/modules/result/result_controller.dart';
import 'package:rispar_simulator_provider/app/modules/result/widgets/result_row.dart';
import 'package:intl/intl.dart';
import '../../core/navigator/app_navigator.dart';
import '../../core/ui/const_colors.dart';
import '../../core/utilities/money.dart';
import '../../models/data_output_model.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat("dd/MM/yyyy");
    final controller = context.read<ResultController>();
    controller.dataOutputModel =
        (ModalRoute.of(context)?.settings.arguments) as DataOutputModel;
    return Scaffold(
      appBar: AppBar(
        leading: const CustomLeadingAppBar(),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.45,
                  child: const LinearProgressIndicator(
                    backgroundColor: kMainGreyColor,
                    valueColor: AlwaysStoppedAnimation<Color>(kMainIconColor),
                    value: 1,
                  ),
                ),
                const SizedBox(width: 40),
                //TODO: Close
                const Icon(
                  Icons.close,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          20,
          10,
          20,
          40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Resultado da Simulação',
              style: kHeaderTextStyleA,
            ),
            Column(
              children: [
                const SizedBox(height: 40),
                ResultRow(
                  item: 'Valor Escolhido',
                  result: Money.moneyFormat(
                    controller.dataOutputModel!.netValue,
                  ),
                ),
                ResultRow(
                  item: 'Garantia',
                  result: Money.moneyFormatBTC(
                    controller.dataOutputModel!.collateral,
                  ),
                ),
                ResultRow(
                  item: 'Taxa de juros',
                  result: '${controller.dataOutputModel?.interestRate}% a.m',
                ),
                ResultRow(
                  item: 'Percentual de garantia',
                  result: '${controller.dataOutputModel?.ltv}%',
                ),
                ResultRow(
                  item: 'Primeiro vencimento',
                  result: dateFormat.format(
                    DateTime.parse(
                      controller.dataOutputModel?.firstDueDate ?? '0000-00-00',
                    ),
                  ),
                ),
                ResultRow(
                  item: 'IOF',
                  result: Money.moneyFormatFrac(
                    controller.dataOutputModel?.iofFee ?? 0,
                  ),
                ),
                ResultRow(
                  item: 'Tarifa da plataforma',
                  result: Money.moneyFormatFrac(
                    controller.dataOutputModel?.originationFee ?? 0,
                  ),
                ),
                ResultRow(
                  item: 'Total financiado',
                  result: Money.moneyFormatFrac(
                    controller.dataOutputModel?.contractValue ?? 0,
                  ),
                ),
                ResultRow(
                  item: 'CET mensal',
                  result: Money.percentFormat(
                    controller.dataOutputModel?.monthlyRate ?? 0,
                  ),
                ),
                ResultRow(
                  item: 'CET anual',
                  result: Money.percentFormat(
                    controller.dataOutputModel?.annualRate ?? 0,
                  ),
                ),
                ResultRow(
                  item: 'Cotação do BTC',
                  result: Money.moneyFormatBTCBRL(
                    controller.dataOutputModel?.collateralUnitPrice ?? 0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  AppNavigator.to.pop();
                  AppNavigator.to.pop();
                  AppNavigator.to.pop();
                },
                child: Text(
                  'Nova Simulação',
                  style: kButtonTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
