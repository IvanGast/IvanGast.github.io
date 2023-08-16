part of '../custom_button.dart';

class CustomButtonSecondary extends CustomButton {
  CustomButtonSecondary({
    Key? key,
    required String text,
    required ButtonModality buttonModality,
    VoidCallback? onPressed,
    IconData? prefixIcon,
    double? height,
    bool useFullContentWidth = false,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          height: height ?? 50,
          buttonModality: buttonModality,
          useFullContentWidth: useFullContentWidth,
          icon: prefixIcon,
        );

  final _cubit = CustomButtonCubit();

  @override
  Widget build(BuildContext context) {
    if (onPressed == null) {
      return inactiveButton;
    }
    return BlocBuilder<CustomButtonCubit, CustomButtonState>(
      bloc: _cubit,
      builder: (_, state) {
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(),
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.transparent,
            side: BorderSide(
              width: 2,
              color: hoverColor(
                isHovering: state.isHovering,
                buttonModality: buttonModality!,
              ),
            ),
          ),
          onPressed: onPressed,
          onHover: _cubit.onHover,
          child: CustomButtonLayout(
            text: text!,
            isPrefix: true,
            icon: icon,
            useFullContentWidth: useFullContentWidth,
            color: hoverColor(
              isHovering: state.isHovering,
              buttonModality: buttonModality!,
            ),
          ),
        );
      },
    );
  }

  OutlinedButton get inactiveButton => OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(),
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          side: const BorderSide(
            width: 2,
            color: CustomColors.darkGrey,
          ),
        ),
        onPressed: null,
        onHover: null,
        child: CustomButtonLayout(
          useFullContentWidth: useFullContentWidth,
          text: text!,
          color: CustomColors.darkGrey,
        ),
      );
}
