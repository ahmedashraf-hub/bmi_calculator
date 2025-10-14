import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/core/app_styles.dart';
import 'package:bmi_calculator/core/widgets/custom_button.dart';
import 'package:bmi_calculator/core/widgets/custom_title_header.dart';
import 'package:bmi_calculator/features/Home/presentation/cubit/gender_cubit.dart';
import 'package:bmi_calculator/features/Home/presentation/cubit/gender_state.dart';
import 'package:bmi_calculator/features/Home/presentation/widgets/custom_gender_card.dart';
import 'package:bmi_calculator/features/measurement/presentation/views/measurements_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GenderCubit(),
      child: Padding(
        padding: const EdgeInsetsGeometry.symmetric(horizontal: 10.0),
        child: BlocBuilder<GenderCubit, GenderState>(
          builder: (context, state) {
            final cubit = context.read<GenderCubit>();
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomHeaderTitle(),
                Text('Please choose your gender', style: AppStyles.medium24),
                CustomGenderCard(
                  backColor: AppColors.greenLightColor,
                  title: 'Male',
                  titleColor: AppColors.primaryColor,
                  imagePath: 'assets/images/boy.png',
                  genderIcon: Icons.male,
                  iconColor: AppColors.blueBlackColor,
                  isSelected: state.selectedGender == 'Male',
                  onTap: () => cubit.selectGender('Male'),
                ),
                CustomGenderCard(
                  backColor: AppColors.orangeLightColor,
                  title: 'Female',
                  titleColor: AppColors.secondaryColor,
                  imagePath: 'assets/images/girl.png',
                  genderIcon: Icons.female,
                  iconColor: AppColors.pinkLightColor,
                  isSelected: state.selectedGender == 'Female',
                  onTap: () => cubit.selectGender('Female'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: CustomButton(
                    title: 'Continue',
                    onPressed: () {
                      final selectedGender = cubit.state.selectedGender;
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
            );
          },
        ),
      ),
    );
  }
}
