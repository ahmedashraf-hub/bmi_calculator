import 'package:bmi_calculator/features/result/presentation/widgets/result_view_body.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({
    super.key,
    required this.weight,
    required this.age,
    required this.height,
    required this.gender,
  });
  final int weight;
  final int age;
  final int height;
  final String gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResultViewBody(
        weight: weight,
        age: age,
        height: height,
        gender: gender,
      ),
    );
  }
}
