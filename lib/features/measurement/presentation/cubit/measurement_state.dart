abstract class MeasurementState {}

class InitialState extends MeasurementState {
  double initialWeithtValue;
  double initialAgeValue;
  InitialState({
    required this.initialWeithtValue,
    required this.initialAgeValue,
  });
}
