import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/core/ui/const_colors.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../core/ui/text_styles.dart';
import '../warranty_controller.dart';

class InstallmentsSlider extends StatelessWidget {
  const InstallmentsSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<WarrantyController>(
          builder: (_, controller, __) {
            return SfSliderTheme(
              data: SfSliderThemeData(
                activeDividerRadius: 7,
                activeTrackHeight: 5,
                inactiveDividerStrokeColor: kMainGreyColor,
                thumbStrokeColor: kMainGreyColor,
                tooltipBackgroundColor: kMainIconColor,
                // disabledInactiveTrackColor: kMainGreyColor,
                // activeDividerColor: kMainGreyColor,
                // activeDividerStrokeColor: kMainIconColor,
                activeTrackColor: kMainIconColor,
                inactiveDividerColor: kMainGreyColor,
                inactiveTrackColor: kMainGreyColor,
                thumbColor: kMainIconColor,
                inactiveDividerStrokeWidth: 10,
                activeDividerColor: kMainIconColor,
                overlayColor: kMainIconColor,
                overlayRadius: 11,
                thumbRadius: 11,

                inactiveDividerRadius: 7,
                inactiveTrackHeight: 5,
                labelOffset: const Offset(0, 20),
              ),
              child: SfSlider(
                min: 3,
                max: 12,
                interval: 3,
                stepSize: 3,
                //showLabels: true,

                showDividers: true,

                //label: '${controller.valueSlider.toInt()}',
                value: controller.installmentsSlider,
                onChanged: (value) {
                  controller.installmentsSlider = value;
                },
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '3',
                style: kNumbersStyle,
              ),
              Text(
                '4',
                style: kNumbersStyle,
              ),
              Text(
                '9',
                style: kNumbersStyle,
              ),
              Text(
                '12',
                style: kNumbersStyle,
              ),
            ],
          ),
        )
      ],
    );
  }
}
