import 'package:bmi_calculator/features/Home/presentation/views/home_view.dart';
import 'package:bmi_calculator/features/measurement/presentation/views/measurements_view.dart';
import 'package:bmi_calculator/features/result/presentation/views/result_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMIAPP());
}

class BMIAPP extends StatelessWidget {
  const BMIAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomeView(),
        '/calculate': (context) => const MeasurementsView(),
        '/result': (context) => const ResultView(),
      },
    );
  }
}
