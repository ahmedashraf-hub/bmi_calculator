abstract class MeasurementState {
  int initialWeithtValue;
  int initialAgeValue;
  int initialHightValue;

  MeasurementState({
    required this.initialWeithtValue,
    required this.initialAgeValue,
    required this.initialHightValue,
  });
}

class InitialState extends MeasurementState {
  InitialState({
    required super.initialWeithtValue,
    required super.initialAgeValue,
    required super.initialHightValue,
  });
}

class UpdateState extends MeasurementState {
  UpdateState({
    required super.initialWeithtValue,
    required super.initialAgeValue,
    required super.initialHightValue,
  });
}
