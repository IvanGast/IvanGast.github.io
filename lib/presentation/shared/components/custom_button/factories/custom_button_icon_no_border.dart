part of '../custom_button.dart';

class CustomButtonIconNoBorder extends CustomButton {
  const CustomButtonIconNoBorder({
    Key? key,
    VoidCallback? onPressed,
    required IconData icon,
    required ButtonModality buttonModality,
    double height = 50,
    double? contentWidth,
  }) : super(
          key: key,
          onPressed: onPressed,
          height: height,
          icon: icon,
          buttonModality: buttonModality,
          contentWidth: contentWidth,
        );

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CustomButtonCubit>(
      create: (context) => CustomButtonCubit(),
      child: BlocBuilder<CustomButtonCubit, CustomButtonState>(
        builder: (context, state) {
          return TextButton(
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: const CircleBorder(),
              foregroundColor: CustomColors.transparent,
              backgroundColor: CustomColors.transparent,
            ),
            onPressed: onPressed,
            onHover: BlocProvider.of<CustomButtonCubit>(context).onHover,
            child: CustomIconButtonLayout(
              icon: icon!,
              color: hoverColor(
                isHovering: state.isHovering,
                buttonModality: buttonModality!,
              ),
              padding: 0,
              height: height ?? 50,
              contentWidth: contentWidth,
            ),
          );
        },
      ),
    );
  }
}
