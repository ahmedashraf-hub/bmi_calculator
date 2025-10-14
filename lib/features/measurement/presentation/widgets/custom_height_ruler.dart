import 'dart:math' as math;
import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/core/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';

class CustomHeightRuler extends StatefulWidget {
  const CustomHeightRuler({
    super.key,
    required this.initialHeight,
    required this.onValueChanged,
  });
  final int initialHeight;
  final void Function(num) onValueChanged;
  @override
  State<CustomHeightRuler> createState() => _CustomHeightRulerState();
}

class _CustomHeightRulerState extends State<CustomHeightRuler> {
  final RulerPickerController controller = RulerPickerController(value: 170);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      decoration: BoxDecoration(
        color: AppColors.orangeLightColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            spreadRadius: 1,
            offset: Offset(0, 2),
            color: AppColors.shadowColor,
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Height (cm)',
            style: AppStyles.medium16.copyWith(color: AppColors.greyLightColor),
          ),
          Text(
            widget.initialHeight.toStringAsFixed(0),
            style: AppStyles.semiBold48.copyWith(
              color: AppColors.secondaryColor,
              fontSize: 48,
            ),
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationX(math.pi),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    sliderTheme: const SliderThemeData(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 0.0,
                      ),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 0.0),
                      thumbColor: Colors.transparent,
                      overlayColor: Colors.transparent,
                      activeTrackColor: Colors.transparent,
                      inactiveTrackColor: Colors.transparent,
                      trackHeight: 0.0,
                      trackGap: 0.0,
                    ),
                  ),
                  child: RulerPicker(
                    controller: controller,
                    ranges: const [RulerRange(begin: 100, end: 200)],
                    scaleLineStyleList: const [
                      ScaleLineStyle(
                        color: AppColors.scaleLineColor,
                        width: 1,
                        height: 20,
                        scale: 0,
                      ),
                      ScaleLineStyle(
                        color: AppColors.scaleLineColor,
                        width: 1,
                        height: 35,
                        scale: 5,
                      ),
                    ],
                    width: 320,
                    height: 40,
                    rulerBackgroundColor: Colors.transparent,
                    rulerMarginTop: 0,
                    onValueChanged: widget.onValueChanged,
                    onBuildRulerScaleText: (index, rulerScaleValue) => '',
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 18,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.orangeLightColor,
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 0,
                child: Column(
                  children: [
                    Icon(
                      Icons.arrow_drop_down,
                      size: 16,
                      color: AppColors.secondaryColor,
                    ),
                    Container(
                      width: 3,
                      height: 35,
                      color: AppColors.secondaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
