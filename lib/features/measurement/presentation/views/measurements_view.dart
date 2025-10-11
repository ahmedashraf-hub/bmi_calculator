import 'package:bmi_calculator/features/measurement/presentation/widgets/measurements_view_body.dart';
import 'package:flutter/material.dart';

class MeasurementsView extends StatelessWidget {
  const MeasurementsView({super.key, required this.gender});
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MeasurementsViewBody(gender: gender));
  }
}
