import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/presentation/layout/responsive_layout.dart';
import 'package:myapp/presentation/services/navigation/app_root/root_navigation_service.dart';
import 'package:myapp/presentation/shared/panel/layout/desktop_layout.dart';
import 'package:myapp/presentation/shared/panel/layout/mobile_layout.dart';

import 'i_modal_service.dart';

/// The [ModalService] can be used to open a modal.
class ModalService implements IModalService {
  ModalService({required this.rootNavigationService});

  final RootNavigationService rootNavigationService;

  @override
  void showSlidePanel({Widget panel = const SizedBox()}) {
    final context = rootNavigationService.getContext();

    showGeneralDialog(
      barrierColor: Colors.white.withOpacity(0.4),
      transitionDuration: const Duration(
        milliseconds: 300,
      ),
      context: context,
      pageBuilder: (context, _, __) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: ResponsiveLayout(
              desktopContent: DesktopPanelLayout(
                panel: panel,
                rootNavigationService: rootNavigationService,
              ),
              mobileContent: MobilePanelLayout(
                panel: panel,
              ),
            ),
          ),
        );
      },
      transitionBuilder: (_, animation1, __, child) {
        return SlideTransition(
          position: Tween(
            begin: const Offset(1, 0),
            end: const Offset(0, 0),
          ).animate(animation1),
          child: child,
        );
      },
    );
  }

  @override
  void closeSlidePanel() {
    rootNavigationService.goBack();
  }
}
