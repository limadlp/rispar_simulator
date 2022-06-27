import 'package:flutter/material.dart';

class HomeImageHeader extends StatelessWidget {
  const HomeImageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/header.png',
      //height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width,
    );
  }
}
