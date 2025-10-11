import 'dart:ui';

import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/core/app_styles.dart';
import 'package:bmi_calculator/core/widgets/custom_button.dart';
import 'package:bmi_calculator/core/widgets/custom_title_header.dart';
import 'package:bmi_calculator/features/measurement/presentation/widgets/custom_height_ruler.dart';
import 'package:bmi_calculator/features/measurement/presentation/widgets/custom_measure_item.dart';
import 'package:bmi_calculator/features/result/presentation/widgets/result_view_body.dart';
import 'package:flutter/material.dart';

class MeasurementsViewBody extends StatelessWidget {
  const MeasurementsViewBody({super.key, required this.gender});
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 24,
                color: AppColors.greenColor,
              ),
            ),
            title: const CustomHeaderTitle(),
          ),
          Text('Please Modify the values', style: AppStyles.medium24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomMeasureItem(title: 'Weight (kg)', value: 65),
              CustomMeasureItem(title: 'Age', value: 26),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.orangeLightColor,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 6,
                  spreadRadius: 1,
                  color: AppColors.shadowColor,
                ),
              ],
            ),
            child: CustomHeightRuler(
              initialHeight: 170.0,
              onValueChanged: (value) {},
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: CustomButton(
              title: 'Calculate',
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ResultView()),
                // );
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierColor: Colors.transparent,

                  builder: (BuildContext context) {
                    return BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                      child: Dialog(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        insetPadding: const EdgeInsets.all(20),
                        child: const ResultViewBody(), // ✅ Use body only
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
