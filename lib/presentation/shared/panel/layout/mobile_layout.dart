import 'package:flutter/material.dart';

class MobilePanelLayout extends StatelessWidget {
  const MobilePanelLayout({
    super.key,
    required this.panel,
  });

  final Widget panel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: MediaQuery.of(context).size.width,
      child: panel,
    );
  }
}
