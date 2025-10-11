import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/core/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    required this.routePath,
    this.onPressed,
  });

  final String title;
  final String routePath;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8),
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: onPressed ?? () => Navigator.pushNamed(context, routePath),
        child: Text(
          title,
          style: AppStyles.semiBold32.copyWith(
            color: Colors.white,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
