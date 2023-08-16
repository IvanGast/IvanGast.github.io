import 'package:flutter/material.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/shared/components/custom_text/custom_text.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({
    Key? key,
    required this.routeBuilder,
    required this.routeName,
  }) : super(key: key);

  static const String route = '/notfound';

  final String routeBuilder;
  final String? routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText.bodyL(S.of(context).not_found_screen),
            const SizedBox(height: CustomSpaces.space),
            CustomText.bodyS(routeBuilder),
            if (routeName != null)
              CustomText.bodyS(
                routeName!,
              ),
          ],
        ),
      ),
    );
  }
}