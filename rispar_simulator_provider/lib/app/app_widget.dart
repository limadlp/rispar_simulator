import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rispar_simulator_provider/app/core/navigator/app_navigator.dart';
import 'package:rispar_simulator_provider/app/modules/splash/splash_page.dart';

import 'modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(540, 1140),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Simulador de Crédito',
            debugShowCheckedModeBanner: false,
            navigatorKey: AppNavigator.navigatorKey,
            routes: {
              ...HomeModule().routers,
            },

            //theme: ,
          );
        });
  }
}
