import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rispar_simulator_provider/app/core/navigator/app_navigator.dart';
import 'package:rispar_simulator_provider/app/core/ui/app_config_ui.dart';
import 'package:rispar_simulator_provider/app/modules/amount/amount_module.dart';
import 'package:rispar_simulator_provider/app/modules/result/result_module.dart';
import 'package:rispar_simulator_provider/app/modules/wait/wait_module.dart';
import 'package:rispar_simulator_provider/app/modules/warranty/warranty_module.dart';

import 'modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(540, 1200),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Simulador de Crédito',
            debugShowCheckedModeBanner: false,
            theme: AppConfigUI.theme,
            navigatorKey: AppNavigator.navigatorKey,
            routes: {
              ...HomeModule().routers,
              ...AmountModule().routers,
              ...WarrantyModule().routers,
              ...WaitModule().routers,
              ...ResultModule().routers,
            },

            //theme: ,
          );
        });
  }
}
