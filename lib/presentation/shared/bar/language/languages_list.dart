import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/main_page.dart';
import 'package:myapp/presentation/screens/root/bloc/root_cubit.dart';
import 'package:myapp/presentation/shared/components/custom_text/custom_text.dart';
import 'package:myapp/presentation/shared/bar/language/bloc/language_cubit.dart';
import 'package:myapp/presentation/shared/components/custom_button/custom_button.dart';
import 'package:myapp/presentation/shared/components/custom_button/factories/button_enum.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

class LanguagesList extends StatelessWidget {
  const LanguagesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LanguageCubit, LanguageState>(

      builder: (context, state) => Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: CustomSpaces.space2x,
                  left: CustomSpaces.space,
                  right: CustomSpaces.space,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomText.h4(
                      S.of(context).languages_title,
                    ),
                    CustomButton.iconNoBorder(
                      icon: Icons.close,
                      buttonModality: ButtonModality.darkBackground,
                      onPressed: BlocProvider.of<RootCubit>(context).goBack,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: CustomSpaces.space2x,
                ),
                child: Container(
                  width: double.infinity,
                  height: 1,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: CustomSpaces.space,
              ),
              _EnglishButton(
                isSelected: state.selectedLanguageIndex == 0,
              ),
              const SizedBox(
                height: CustomSpaces.space,
              ),
              _GermanButton(
                isSelected: state.selectedLanguageIndex == 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GermanButton extends StatelessWidget {
  const _GermanButton({required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return CustomButton.primarySmall(
      text: 'DEUTSCH',
      buttonModality: ButtonModality.lightBackground,
      onPressed: BlocProvider.of<LanguageCubit>(context).selectGerman,
      isSelected: isSelected,
    );
  }
}

class _EnglishButton extends StatelessWidget {
  const _EnglishButton({required this.isSelected});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return CustomButton.primarySmall(
      text: 'ENGLISH',
      buttonModality: ButtonModality.lightBackground,
      onPressed: BlocProvider.of<LanguageCubit>(context).selectEnglish,
      isSelected: isSelected,
    );
  }
}
