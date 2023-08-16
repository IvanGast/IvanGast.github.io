import 'package:flutter/material.dart';
import 'package:myapp/presentation/shared/components/custom_text/custom_text.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({
    Key? key,
  }) : super(key: key);

  static const String route = '/info';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText.bodyL('YOUR INFO'),
        ],
      ),
    );
  }
}
