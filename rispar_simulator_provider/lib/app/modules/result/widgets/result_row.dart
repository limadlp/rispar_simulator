import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rispar_simulator_provider/app/core/ui/const_colors.dart';

class ResultRow extends StatelessWidget {
  final String item;
  final String result;

  const ResultRow({Key? key, required this.item, required this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item,
                style: TextStyle(
                  color: const Color(0xff474747),
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                result,
                style: TextStyle(
                  color: const Color(0xff6b6b6b),
                  fontSize: 28.sp,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: Color(0xffededed),
          thickness: 1.0,
        ),
      ],
    );
  }
}
