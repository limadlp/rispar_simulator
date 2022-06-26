import 'package:flutter/material.dart';

import '../const_colors.dart';

class CustomAppBarTitle extends StatelessWidget {
  final double? value;
  const CustomAppBarTitle({Key? key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 40, 40, 40),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: LinearProgressIndicator(
            backgroundColor: kMainGreyColor,
            valueColor: const AlwaysStoppedAnimation<Color>(kMainIconColor),
            value: value ?? 1,
          ),
        ),
      ),
    );
  }
}
