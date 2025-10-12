import 'package:bmi_calculator/features/Home/presentation/cubit/gender_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenderCubit extends Cubit<GenderState> {
  GenderCubit() : super(GenderInitialState('Male'));

  void selectGender(String gender) {
    emit(GenderInitialState(gender));
  }
}
