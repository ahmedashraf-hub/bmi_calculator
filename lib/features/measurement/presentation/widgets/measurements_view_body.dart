import 'dart:ui';

import 'package:bmi_calculator/core/app_colors.dart';
import 'package:bmi_calculator/core/app_styles.dart';
import 'package:bmi_calculator/core/widgets/custom_button.dart';
import 'package:bmi_calculator/core/widgets/custom_title_header.dart';
import 'package:bmi_calculator/features/measurement/presentation/cubit/measurement_cubit.dart';
import 'package:bmi_calculator/features/measurement/presentation/cubit/measurement_state.dart';
import 'package:bmi_calculator/features/measurement/presentation/widgets/custom_height_ruler.dart';
import 'package:bmi_calculator/features/measurement/presentation/widgets/custom_measure_item.dart';
import 'package:bmi_calculator/features/result/presentation/widgets/result_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasurementsViewBody extends StatelessWidget {
  const MeasurementsViewBody({super.key, required this.gender});
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocBuilder<MeasurementCubit, MeasurementState>(
        builder: (context, state) {
          return Column(
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
                  CustomMeasureItem(
                    title: 'Weight (kg)',
                    value: state.initialWeithtValue,
                    add: () {
                      int newValue = state.initialWeithtValue;
                      newValue++;
                      context.read<MeasurementCubit>().updateWeight(newValue);
                    },
                    decrement: () {
                      int newValue = state.initialWeithtValue;
                      newValue--;
                      context.read<MeasurementCubit>().updateWeight(newValue);
                    },
                  ),
                  CustomMeasureItem(
                    title: 'Age',
                    value: state.initialAgeValue,

                    add: () {
                      int newValue = state.initialAgeValue;
                      newValue++;
                      context.read<MeasurementCubit>().updateAge(newValue);
                    },
                    decrement: () {
                      int newValue = state.initialAgeValue;
                      newValue--;
                      context.read<MeasurementCubit>().updateAge(newValue);
                    },
                  ),
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
                  initialHeight: state.initialHightValue,
                  onValueChanged: (value) {
                    context.read<MeasurementCubit>().updateHeight(
                      value.toInt(),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: CustomButton(
                  title: 'Calculate',
                  onPressed: () {
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
                            child: ResultViewBody(
                              weight: state.initialWeithtValue,
                              age: state.initialAgeValue,
                              height: state.initialHightValue,
                              gender: gender,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
