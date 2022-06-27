import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/core/ui/text_styles.dart';
import 'package:rispar_simulator_provider/app/core/ui/widgets/custom_app_bar.dart';
import 'package:rispar_simulator_provider/app/core/ui/widgets/custom_leading_app_bar.dart';
import 'package:rispar_simulator_provider/app/models/data_input_model.dart';
import '../../core/navigator/app_navigator.dart';
import 'amount_controller.dart';

class AmountPage extends StatefulWidget {
  final AmountController _amountController;

  const AmountPage({Key? key, required AmountController amountController})
      : _amountController = amountController,
        super(key: key);

  @override
  State<AmountPage> createState() => _AmountPageState();
}

class _AmountPageState extends State<AmountPage> {
  final _formKey = GlobalKey<FormState>();
  final valueController = MoneyMaskedTextController(
    thousandSeparator: '.',
    decimalSeparator: '',
    leftSymbol: "R\$ ",
    precision: 0,
    initialValue: 1000,
  );

  @override
  void dispose() {
    super.dispose();
    valueController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget._amountController.dataInputModel =
        (ModalRoute.of(context)?.settings.arguments) as DataInputModel;

    return Scaffold(
      appBar: AppBar(
        leading: const CustomLeadingAppBar(),
        title: const CustomAppBarTitle(value: 0.33),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 40

            //vertical: 20,
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
                      style: kHeaderTextStyleB.copyWith(
                        color: const Color(0xff0f7676),
                      ),
                    ),
                    Text(
                      'você precisa?',
                      style: kHeaderTextStyleA,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Text(
                      'Insira um valor entre ',
                      style: kTextStyleA.copyWith(fontSize: 25.sp),
                    ),
                    Text(
                      "R\$1000 ",
                      style: kTextStyleABold.copyWith(fontSize: 26.sp),
                    ),
                    Text(
                      "a ",
                      style: kTextStyleA.copyWith(fontSize: 25.sp),
                    ),
                    Text(
                      "R\$300.000",
                      style: kTextStyleABold.copyWith(fontSize: 26.sp),
                    ),
                  ],
                ),
              ],
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                controller: valueController,
                style: kMoneyTextStyle,

                //initialValue:,
                decoration: const InputDecoration(hintText: "R\$ 1000"),
                validator: (value) {
                  value = value!.replaceAll(RegExp(r'[^0-9]'), '');

                  if (value.isEmpty) {
                    return 'Insira um valor';
                  } else if (int.parse(value) < 1000 ||
                      int.parse(value) > 300000) {
                    return "O valor deve estar entre R\$1.000 e R\$300.000";
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                onSaved: (value) {
                  value = value!.replaceAll(RegExp(r'[^0-9]'), '');
                  widget._amountController.dataInputModel!.amount =
                      double.parse(value);
                },
                onChanged: (value) {
                  widget._amountController.isValueFilled = value.isNotEmpty;
                  widget._amountController.changeButtonActive();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: Consumer<AmountController>(builder: (_, controller, __) {
                  return MaterialButton(
                    disabledColor: const Color(0xff7fc0c1),
                    color: const Color(0xff3f9798),
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
                    child: Text(
                      'Continuar',
                      style: kButtonTextStyle,
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
