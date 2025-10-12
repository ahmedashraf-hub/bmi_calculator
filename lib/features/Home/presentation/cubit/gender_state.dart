abstract class GenderState {
  final String selectedGender;
  GenderState(this.selectedGender);
}

class GenderInitialState extends GenderState {
  GenderInitialState(super.selectedGender);
}
