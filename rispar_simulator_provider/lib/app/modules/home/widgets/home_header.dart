import 'package:flutter/material.dart';
import 'package:rispar_simulator_provider/app/core/ui/text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Simule ',
              style: kHeaderTextStyleA,
            ),
            Text(
              'agora',
              style: kHeaderTextStyleB,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Crédito rápido, fácil e seguro! :)',
          style: kTextStyleA,
        ),
        // const SizedBox(
        //   height: 40,
        // ),
      ],
    );
  }
}
