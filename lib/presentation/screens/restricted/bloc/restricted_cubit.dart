import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:loggy/loggy.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/contracts/i_dialog_service.dart';
import 'package:myapp/presentation/contracts/i_restriction_service.dart';
import 'package:myapp/presentation/screens/restricted/dialog_text.dart';
import 'package:myapp/presentation/services/navigation/app_root/root_navigation_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import '../../../shared/locator.dart';

part 'restricted_state.dart';

class RestrictedCubit extends Cubit<RestrictedState> {
  RestrictedCubit() : super(const RestrictedState());

  final _dialogService = locator<IDialogService>();
  final _restrictionService = locator<IRestrictionService>();
  final _rootNavigationService = locator<RootNavigationService>();

  void load() {
    _emitQuestion(0);
  }

  void continuePressed() async {
    try {
      if (state.isCheckboxChecked) {
        if (state.currentIndex == 2) {
          _restrictionService.setRestriction();
          _rootNavigationService.navigateTo('/');
        } else {
          _emitQuestion(state.currentIndex + 1);
        }
      } else {
        _dialogService.openDialog(
          child: const RestrictedDialogText(),
        );
      }
    } catch (ex, st) {
      logDebug('We have error in QuestionnaireCubit');
      logError(ex.toString(), ex, st);
      await Sentry.captureException(ex, stackTrace: st);
    }
  }

  void checkboxPressed() {
    _emitQuestion(state.currentIndex,
        isCheckboxChecked: !state.isCheckboxChecked);
  }

  void backPressed() {
    if (state.currentIndex != 0) {
      _emitQuestion(state.currentIndex - 1);
    }
  }

  String _getQuestionTextByIndex(int index) {
    return index == 0
        ? S.current.restriction_question1
        : index == 1
            ? S.current.restriction_question2
            : S.current.restriction_question3;
  }

  void _emitQuestion(
    int index, {
    bool isCheckboxChecked = false,
  }) {
    emit(
      RestrictedState(
        currentIndex: index,
        isCheckboxChecked: isCheckboxChecked,
        questionText: _getQuestionTextByIndex(index),
      ),
    );
  }
}
