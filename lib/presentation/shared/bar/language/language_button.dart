import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/presentation/shared/bar/language/bloc/language_cubit.dart';
import 'package:myapp/presentation/shared/components/custom_button/custom_button.dart';
import 'package:myapp/presentation/shared/components/custom_button/factories/button_enum.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton.iconNoBorder(
      icon: Icons.language_rounded,
      buttonModality: ButtonModality.darkBackground,
      onPressed: BlocProvider.of<LanguageCubit>(context).open,
    );
  }
}
