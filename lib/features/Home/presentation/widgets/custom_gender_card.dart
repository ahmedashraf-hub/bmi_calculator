import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/core/app_styles.dart';
import 'package:flutter/material.dart';

class CustomGenderCard extends StatelessWidget {
  const CustomGenderCard({
    super.key,
    required this.backColor,
    required this.title,
    required this.titleColor,
    required this.imagePath,
    required this.genderIcon,
    required this.iconColor,
    required this.isSelected,
    this.onTap,
  });

  final Color backColor;
  final String title;
  final Color titleColor;
  final String imagePath;
  final IconData genderIcon;
  final Color iconColor;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: isSelected
              ? Border.all(color: AppColors.primaryColor, width: 2)
              : null,
          color: backColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: AppColors.shadowColor,
              offset: Offset(0, 2),
              blurRadius: 6,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppStyles.semiBold32.copyWith(color: titleColor),
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 113,
                    width: 113,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(57),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x0000001A),
                          offset: const Offset(0, 2),
                          blurRadius: 6,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(57),
                      child: Image.asset(imagePath, fit: BoxFit.cover),
                    ),
                  ),
                  Positioned(
                    top: -10,
                    left: -10,
                    child: Container(
                      height: 37,
                      width: 37,
                      decoration: BoxDecoration(
                        color: iconColor,
                        borderRadius: BorderRadius.circular(27),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x0000001A),
                            offset: const Offset(0, 2),
                            blurRadius: 6,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Icon(genderIcon, size: 20, color: Colors.white),
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
