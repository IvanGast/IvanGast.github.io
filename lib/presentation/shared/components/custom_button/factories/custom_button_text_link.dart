part of '../custom_button.dart';

class CustomButtonTextLink extends CustomButton {
  CustomButtonTextLink({
    Key? key,
    required String text,
    VoidCallback? onPressed,
    double? height,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          height: height,
        );

  final _cubit = CustomButtonCubit();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomButtonCubit, CustomButtonState>(
      bloc: _cubit,
      builder: (_, state) {
        return TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
          ),
          onPressed: onPressed,
          onHover: _cubit.onHover,
          child: Row(
            children: [
              CustomText.button(
                text!,
                decoration: TextDecoration.underline,
                color: hoverColor(
                  buttonModality: ButtonModality.darkBackground,
                  isHovering: state.isHovering,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
