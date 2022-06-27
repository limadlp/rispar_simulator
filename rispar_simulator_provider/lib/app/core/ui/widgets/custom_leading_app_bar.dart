import 'package:flutter/material.dart';

import '../../navigator/app_navigator.dart';

class CustomLeadingAppBar extends StatelessWidget {
  const CustomLeadingAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AppNavigator.to.pop(),
      child: const Padding(
        padding: EdgeInsets.only(left: 22.0),
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
