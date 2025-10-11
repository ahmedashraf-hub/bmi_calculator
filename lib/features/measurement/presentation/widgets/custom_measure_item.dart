import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/core/app_styles.dart';
import 'package:flutter/material.dart';

class CustomMeasureItem extends StatelessWidget {
  const CustomMeasureItem({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.orangeLightColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: AppStyles.medium16.copyWith(
                  color: AppColors.shadowColor,
                ),
              ),
              Text(
                value.toStringAsFixed(0),
                style: AppStyles.semiBold48.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Colors.white,
                      elevation: 2,
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.remove,
                      size: 16,
                      color: AppColors.orangeBlackColor,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: EdgeInsets.all(10),
                      backgroundColor: Colors.white,
                      elevation: 2,
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      size: 16,
                      color: AppColors.orangeBlackColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
