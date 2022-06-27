import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rispar_simulator_provider/app/core/ui/const_colors.dart';
import 'package:rispar_simulator_provider/app/core/ui/text_styles.dart';
import 'package:rispar_simulator_provider/app/core/ui/widgets/custom_leading_app_bar.dart';

import '../../core/navigator/app_navigator.dart';

class WaitPage extends StatelessWidget {
  const WaitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomLeadingAppBar(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {
                AppNavigator.to.pop();
              },
              icon: const Icon(
                Icons.close,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 0, 50, 130),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CupertinoActivityIndicator(
                color: kMainIconColor,
                radius: 16,
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  'Aguarde um momento',
                  style: kHeaderTextStyleA,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Estamos simulando seu pedido de cŕedito Rispar...',
                  textAlign: TextAlign.center,
                  style: kTextStyleA.copyWith(fontSize: 28.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
