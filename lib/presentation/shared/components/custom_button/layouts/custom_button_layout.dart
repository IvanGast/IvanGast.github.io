import 'package:flutter/material.dart';
import 'package:myapp/presentation/shared/components/custom_text/custom_text.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

class CustomButtonLayout extends StatelessWidget {
  const CustomButtonLayout({
    Key? key,
    required this.text,
    required this.color,
    this.icon,
    this.isPrefix = false,
    this.iconSize,
    this.useFullContentWidth = false,
    this.padding = 16,
    this.height = 50,
  }) : super(key: key);

  final String text;
  final Color color;
  final IconData? icon;
  final bool isPrefix;
  final double? iconSize;
  final double padding;
  final bool useFullContentWidth;
  final double height;

  @override
  Widget build(BuildContext context) {
    Widget? content;
    if (icon == null) {
      content = _contentWithCenteredText();
    } else {
      content = _contentWithTextAndIcon();
    }

    if (useFullContentWidth) {
      return SizedBox(
        width: double.infinity,
        height: height,
        child: content,
      );
    }
    return SizedBox(
      height: height,
      child: content,
    );
  }

  Widget get _text => CustomText.button(
        text,
        color: color,
      );

  Widget _contentWithCenteredText() {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: padding,
        ),
        child: _text,
      ),
    );
  }

  Widget _contentWithTextAndIcon() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: padding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: isPrefix ? children.reversed.toList() : children,
      ),
    );
  }

  List<Widget> get children => [
        _text,
        if (useFullContentWidth)
          const Spacer()
        else
          const SizedBox(
            width: CustomSpaces.space2x,
          ),
        Icon(
          icon,
          color: color,
          size: iconSize,
        ),
      ];
}
