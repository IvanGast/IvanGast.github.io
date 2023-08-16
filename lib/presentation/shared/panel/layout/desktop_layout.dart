import 'package:myapp/presentation/services/navigation/app_root/root_navigation_service.dart';
import 'package:flutter/material.dart';

class DesktopPanelLayout extends StatelessWidget {
  const DesktopPanelLayout({
    super.key,
    required this.rootNavigationService,
    required this.panel,
  });

  final RootNavigationService rootNavigationService;
  final Widget panel;

  static const double _maxWidth = 1000;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: rootNavigationService.goBack,
            child: Container(
              color: Colors.transparent,
            ),
          ),
        ),
        Container(
          constraints: const BoxConstraints(
            maxWidth: _maxWidth,
          ),
          height: double.infinity,
          width: MediaQuery.of(context).size.width * 0.35,
          child: panel,
        ),
      ],
    );
  }
}
