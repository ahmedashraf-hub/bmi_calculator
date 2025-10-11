import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/core/app_styles.dart';
import 'package:bmi_calculator/core/widgets/custom_button.dart';
import 'package:bmi_calculator/core/widgets/custom_title_header.dart';
import 'package:bmi_calculator/features/Home/presentation/widgets/custom_gender_card.dart';
import 'package:bmi_calculator/features/measurement/presentation/views/measurements_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  String selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomHeaderTitle(),
          Text('Please choose your gender', style: AppStyles.medium24),
          CustomGenderCard(
            backColor: AppColors.greenLightColor,
            title: 'Male',
            titleColor: AppColors.primaryColor,
            imagePath: 'assets/images/boy.png',
            genderIcon: Icons.male,
            iconColor: AppColors.blueBlackColor,
            isSelected: selectedGender == 'Male',
            onTap: () => setState(() {
              selectedGender = 'Male';
            }),
          ),
          CustomGenderCard(
            backColor: AppColors.orangeLightColor,
            title: 'Female',
            titleColor: AppColors.secondaryColor,
            imagePath: 'assets/images/girl.png',
            genderIcon: Icons.female,
            iconColor: AppColors.pinkLightColor,
            isSelected: selectedGender == 'Female',
            onTap: () => setState(() {
              selectedGender = 'Female';
            }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomButton(
              title: 'Continue',

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MeasurementsView(gender: selectedGender),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
