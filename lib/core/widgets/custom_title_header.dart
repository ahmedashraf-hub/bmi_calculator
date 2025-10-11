import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/core/app_styles.dart';
import 'package:flutter/material.dart';

class CustomHeaderTitle extends StatelessWidget {
  const CustomHeaderTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'BMI ',
          style: AppStyles.semiBold32.copyWith(color: AppColors.orangeColor),
        ),

        Text(
          'Calculator',
          style: AppStyles.semiBold32.copyWith(color: AppColors.greenColor),
        ),
      ],
    );
  }
}
