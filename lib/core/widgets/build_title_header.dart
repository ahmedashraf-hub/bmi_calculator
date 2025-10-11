import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/core/app_styles.dart';
import 'package:flutter/material.dart';

class BuildTitleHeader extends StatelessWidget {
  const BuildTitleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'BMI ',
          style: AppStyles.semiBold32.copyWith(
            color: AppColors.secondaryColor,
            fontSize: 32,
          ),
        ),

        Text(
          'Calculator',
          style: AppStyles.semiBold32.copyWith(
            color: AppColors.primaryColor,
            fontSize: 32,
          ),
        ),
      ],
    );
  }
}
