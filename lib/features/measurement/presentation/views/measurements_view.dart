import 'package:bmi_calculator/features/measurement/presentation/cubit/measurement_cubit.dart';
import 'package:bmi_calculator/features/measurement/presentation/widgets/measurements_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasurementsView extends StatelessWidget {
  const MeasurementsView({super.key, required this.gender});
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => MeasurementCubit(),
        child: MeasurementsViewBody(gender: gender),
      ),
    );
  }
}
