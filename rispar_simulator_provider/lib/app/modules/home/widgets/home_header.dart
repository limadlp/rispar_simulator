import 'package:flutter/material.dart';
import 'package:rispar_simulator_provider/app/core/ui/text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('assets/images/header.png'),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: const [
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
        const Text(
          'Crédito rápido, fácil e seguro! :)',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
