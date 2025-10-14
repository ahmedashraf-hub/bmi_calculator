import 'package:bmi_calculator/features/measurement/presentation/cubit/measurement_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasurementCubit extends Cubit<MeasurementState> {
  MeasurementCubit()
    : super(
        InitialState(
          initialWeithtValue: 65,
          initialAgeValue: 26,
          initialHightValue: 150,
        ),
      );

  void updateWeight(int weight) {
    emit(
      UpdateState(
        initialWeithtValue: weight,
        initialAgeValue: state.initialAgeValue,
        initialHightValue: state.initialHightValue,
      ),
    );
  }

  void updateAge(int age) {
    emit(
      UpdateState(
        initialWeithtValue: state.initialWeithtValue,
        initialAgeValue: age,
        initialHightValue: state.initialHightValue,
      ),
    );
  }

  void updateHeight(int height) {
    emit(
      UpdateState(
        initialWeithtValue: state.initialWeithtValue,
        initialAgeValue: state.initialAgeValue,
        initialHightValue: height,
      ),
    );
  }
}
