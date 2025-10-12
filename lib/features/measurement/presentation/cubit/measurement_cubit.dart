import 'package:bmi_calculator/features/measurement/presentation/cubit/measurement_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasurementCubit extends Cubit<MeasurementState> {
  MeasurementCubit()
    : super(InitialState(initialWeithtValue: 65, initialAgeValue: 26));

  void incrementWeight() {}
}
