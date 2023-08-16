part of '../custom_button.dart';

class CustomButtonMenu extends CustomButton {
  CustomButtonMenu({
    Key? key,
    required String text,
    required bool isSelected,
    required VoidCallback onPressed,
  }) : super(
          key: key,
          text: text,
          onPressed: onPressed,
          isSelected: isSelected,
          height: 50,
          buttonModality: ButtonModality.lightBackground,
          useFullContentWidth: true,
        );

  final _cubit = CustomButtonCubit();

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return _selectedButton;
    }

    return BlocBuilder<CustomButtonCubit, CustomButtonState>(
      bloc: _cubit,
      builder: (_, state) {
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(),
            // foregroundColor: CustomColors.black,
            backgroundColor: hoverColor(
              isHovering: state.isHovering,
              buttonModality: buttonModality!,
            ),
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
          child: SizedBox(
            width: double.infinity,
            height: height,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: CustomSpaces.space2x,
                ),
                child: CustomText.h5(
                  text!,
                  color: textColor(
                    isHovering: state.isHovering,
                    buttonModality: buttonModality!,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  OutlinedButton get _selectedButton => OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: const RoundedRectangleBorder(),
          backgroundColor: CustomColors.green,
          foregroundColor: CustomColors.green,
          side: const BorderSide(
            width: 2,
            color: CustomColors.green,
          ),
        ),
        onPressed: null,
        onHover: null,
        child: SizedBox(
          width: double.infinity,
          height: height,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: CustomSpaces.space2x,
              ),
              child: CustomText.h5(
                text!,
                color: CustomColors.white,
              ),
            ),
          ),
        ),
      );
}
