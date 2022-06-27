import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rispar_simulator_provider/app/core/ui/const_colors.dart';
import 'package:rispar_simulator_provider/app/core/ui/text_styles.dart';

class WaitPage extends StatelessWidget {
  const WaitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          //TODO: OnPressed
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.close,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(
              color: kMainIconColor,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Aguarde um momento',
              style: kHeaderTextStyleB,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Estamos simulando seu pedido de cŕedito Rispar...',
              style: kTextStyleA.copyWith(fontSize: 25.sp),
            ),
          ],
        ),
      ),
    );
  }
}
