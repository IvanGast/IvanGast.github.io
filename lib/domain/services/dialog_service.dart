import 'package:flutter/material.dart';
import 'package:myapp/presentation/contracts/i_dialog_service.dart';
import 'package:myapp/presentation/services/navigation/app_root/root_navigation_service.dart';
import 'package:myapp/presentation/shared/components/dialog/dialog_layout.dart';

/// The [DialogService] can be used to open a dialog.
class DialogService implements IDialogService {
  DialogService({
    required this.rootNavigationService,
  });

  final RootNavigationService rootNavigationService;

  @override
  void openDialog({
    required Widget child,
  }) {
    final context = rootNavigationService.getContext();

    showDialog<void>(
      context: context,
      barrierColor: Colors.transparent,
      builder: (_) => Scaffold(
        backgroundColor: Colors.transparent,
        body: CustomDialogLayout(
          closeCallback: rootNavigationService.goBack,
          child: child,
        ),
      ),
    );
  }
}
