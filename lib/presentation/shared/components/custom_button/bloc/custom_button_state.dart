part of 'custom_button_cubit.dart';

class CustomButtonState extends Equatable {
  const CustomButtonState({
    this.isHovering = false,
  });

  final bool isHovering;

  @override
  List<Object> get props => [
        isHovering,
      ];
}
