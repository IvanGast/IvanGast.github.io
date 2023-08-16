part of '../custom_button.dart';

class CustomButtonCheckbox extends CustomButton {
  const CustomButtonCheckbox({
    Key? key,
    required VoidCallback onPressed,
    required bool isSelected,
    double? height,
  }) : super(
          key: key,
          onPressed: onPressed,
          isSelected: isSelected,
          height: height,
        );

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CustomButtonCubit>(
      create: (context) => CustomButtonCubit(),
      child: BlocBuilder<CustomButtonCubit, CustomButtonState>(
        builder: (context, state) {
          return InkWell(
              splashColor: checkboxSplashColor(isSelected),
              hoverColor: checkboxSplashColor(isSelected),
              onTap: onPressed,
              child: Container(
                height: 30,
                width: 30,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: checkboxFillColor(isSelected),
                  border: Border.all(
                    color: checkboxBorderColor(isSelected),
                    width: 3,
                  ),
                ),
                child: Center(child: checkboxIcon(isSelected)),
              ),
            );
        },
      ),
    );
  }
}
