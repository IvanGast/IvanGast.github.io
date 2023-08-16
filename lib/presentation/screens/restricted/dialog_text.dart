import 'package:flutter/cupertino.dart';
import 'package:myapp/generated/l10n.dart';
import 'package:myapp/presentation/shared/components/custom_text/custom_text.dart';

class RestrictedDialogText extends StatelessWidget {
  const RestrictedDialogText({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText.h5(
      S.of(context).restricted_dialog,
    );
  }

}