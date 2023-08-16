import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/screens/restricted/bloc/restricted_cubit.dart';
import 'package:myapp/presentation/shared/components/custom_text/custom_text.dart';
import 'package:myapp/presentation/shared/components/custom_button/custom_button.dart';
import 'package:myapp/presentation/shared/components/custom_button/factories/button_enum.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

double get _buttonWidth => ScreenUtil().screenWidth * 0.35;

class RestrictedScreen extends StatelessWidget {
  const RestrictedScreen({super.key});

  static const String route = '/restricted';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RestrictedCubit()..load(),
      child: BlocBuilder<RestrictedCubit, RestrictedState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: CustomSpaces.space5x,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: _verticalOffset,
                ),
                CustomText.bodyL(
                  state.questionText,
                  maxLines: 5,
                ),
                const SizedBox(
                  height: CustomSpaces.space4x,
                ),
                _Checkbox(
                  isChecked: state.isCheckboxChecked,
                ),
                const SizedBox(
                  height: CustomSpaces.space4x,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (state.currentIndex != 0)
                      _BackButton()
                    else
                      SizedBox(
                        width: _buttonWidth,
                      ),
                    _CounterText(count: state.currentIndex),
                    _ContinueButton(count: state.currentIndex),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  double get _verticalOffset =>
      Breakpoints.isMobile ? CustomSpaces.space5x : CustomSpaces.space13x;
}

class _Checkbox extends StatelessWidget {
  const _Checkbox({
    Key? key,
    required this.isChecked,
  }) : super(key: key);

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CustomButton.checkbox(
          isSelected: isChecked,
          onPressed:
              BlocProvider.of<RestrictedCubit>(context).checkboxPressed,
        ),
        Container(
          margin: const EdgeInsets.only(
            top: CustomSpaces.space,
          ),
          width: CustomSpaces.space32x,
          child: CustomText.bodyS(
            S.of(context).restriction_info,
            maxLines: 5,
            textAlign: TextAlign.center,
            color: isChecked ? CustomColors.green : CustomColors.red,
          ),
        ),
      ],
    );
  }
}

class _BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _buttonWidth,
      child: CustomButton.primarySmall(
        text: S.of(context).restriction_back,
        buttonModality: ButtonModality.darkBackground,
        onPressed: BlocProvider.of<RestrictedCubit>(context).backPressed,
        useFullContentWidth: true,
      ),
    );
  }
}

class _CounterText extends StatelessWidget {
  const _CounterText({
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return CustomText.bodyL("${(count + 1)}/3");
  }
}

class _ContinueButton extends StatelessWidget {
  const _ContinueButton({
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _buttonWidth,
      child: CustomButton.primarySmall(
        text: count == 2
            ? S.of(context).restriction_finish
            : S.of(context).restriction_continue,
        buttonModality: ButtonModality.purchasing,
        onPressed: BlocProvider.of<RestrictedCubit>(context).continuePressed,
        useFullContentWidth: true,
      ),
    );
  }
}
