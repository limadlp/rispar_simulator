import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rispar_simulator_provider/app/core/ui/const_colors.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../../../core/ui/text_styles.dart';
import '../warranty_controller.dart';

class WarrantySlider extends StatelessWidget {
  const WarrantySlider({Key? key}) : super(key: key);

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
                min: 20,
                max: 50,
                interval: 15,
                stepSize: 15,
                //showLabels: true,

                //numberFormat: NumberFormat("0%"),

                showDividers: true,

                //label: '${controller.valueSlider.toInt()}',
                value: controller.warrantySlider,
                onChanged: (value) {
                  controller.warrantySlider = value;
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
                '20%',
                style: kNumbersStyle,
              ),
              Text(
                '35%',
                style: kNumbersStyle,
              ),
              Text(
                '50%',
                style: kNumbersStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
