import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/core/app_styles.dart';
import 'package:bmi_calculator/core/widgets/custom_button.dart';
import 'package:bmi_calculator/features/Home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            decoration: BoxDecoration(
              color: AppColors.greenLightColor,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: AppColors.shadowColor,
                  blurRadius: 6,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Your BMI:',
                  style: AppStyles.medium16.copyWith(fontSize: 16),
                ),
                Text(
                  '22.5',
                  style: AppStyles.bold64.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                Stack(
                  clipBehavior:
                      Clip.none, // Important to allow icon to overflow
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                        color: AppColors.greenColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'Normal',
                        style: AppStyles.semiBold12.copyWith(fontSize: 12),
                      ),
                    ),
                    Positioned(
                      bottom: -15,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.statusColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(color: Color(0xffACACAC), thickness: 0.5, height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '65 kg',
                          style: AppStyles.semiBold20.copyWith(
                            color: AppColors.primaryColor,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Weight',
                          style: AppStyles.semiBold14.copyWith(
                            color: AppColors.greyLightColor,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '170 cm',
                          style: AppStyles.semiBold20.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Text(
                          'Height',
                          style: AppStyles.semiBold14.copyWith(
                            color: AppColors.greyLightColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '26',
                          style: AppStyles.semiBold20.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Text(
                          'Age',
                          style: AppStyles.semiBold14.copyWith(
                            color: AppColors.greyLightColor,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'male',
                          style: AppStyles.semiBold20.copyWith(
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Text(
                          'Gender',
                          style: AppStyles.semiBold14.copyWith(
                            color: AppColors.greyLightColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  'Healthy weight for the height:',
                  style: AppStyles.medium16.copyWith(fontSize: 16),
                ),
                Text(
                  '53.5 kg - 72.3 kg',
                  style: AppStyles.medium16.copyWith(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                  ),
                ),
                const SizedBox(height: 15),
                CustomButton(
                  title: 'Close',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeView()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
