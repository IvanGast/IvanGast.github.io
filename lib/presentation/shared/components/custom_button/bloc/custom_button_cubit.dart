import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'custom_button_state.dart';

class CustomButtonCubit extends Cubit<CustomButtonState> {
  CustomButtonCubit()
      : super(
          const CustomButtonState(),
        );

  // ignore: avoid_positional_boolean_parameters
  void onHover(bool value) {
    emit(CustomButtonState(
      isHovering: value,
    ));
  }
}
