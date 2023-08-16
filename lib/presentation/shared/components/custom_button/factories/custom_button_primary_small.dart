part of '../custom_button.dart';

class CustomButtonPrimarySmall extends CustomButton {
  CustomButtonPrimarySmall({
    Key? key,
    required String text,
    required ButtonModality buttonModality,
    VoidCallback? onPressed,
    double height = 50,
    bool useFullContentWidth = false,
    bool isSelected = false,
    double padding = 16,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          height: height,
          buttonModality: buttonModality,
          useFullContentWidth: useFullContentWidth,
          isSelected: isSelected,
          padding: padding,
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
        return TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(),
            foregroundColor: CustomColors.black,
            backgroundColor: isSelected
                ? CustomColors.greenMaterial
                : hoverColor(
                    isHovering: state.isHovering,
                    buttonModality: buttonModality!,
                  ),
          ),
          onPressed: isSelected ? () {} : onPressed,
          onHover: isSelected ? (_) {} : _cubit.onHover,
          child: CustomButtonLayout(
            useFullContentWidth: useFullContentWidth,
            text: text!,
            height: height ?? 50,
            padding: padding,
            color: isSelected
                ? CustomColors.black
                : textColor(
                    isHovering: state.isHovering,
                    buttonModality: buttonModality!,
                  ),
          ),
        );
      },
    );
  }

  TextButton get inactiveButton => TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(),
          foregroundColor: CustomColors.black,
          backgroundColor: CustomColors.lightGrey,
        ),
        onPressed: null,
        onHover: null,
        child: CustomButtonLayout(
          padding: padding,
          useFullContentWidth: useFullContentWidth,
          text: text!,
          color: CustomColors.darkGrey,
        ),
      );
}
