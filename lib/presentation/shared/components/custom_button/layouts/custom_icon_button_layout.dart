import 'package:flutter/material.dart';

class CustomIconButtonLayout extends StatelessWidget {
  const CustomIconButtonLayout({
    Key? key,
    required this.color,
    required this.icon,
    this.isPrefix = false,
    this.iconSize,
    this.contentWidth,
    this.padding = 16,
    this.height = 50,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final bool isPrefix;
  final double? iconSize;
  final double? contentWidth;
  final double padding;

  final double height;

  @override
  Widget build(BuildContext context) {
    if (contentWidth != null) {
      return SizedBox(
        width: contentWidth,
        height: height,
        child: _contentWithTextAndIcon,
      );
    }
    return SizedBox(
      height: height,
      child: _contentWithTextAndIcon,
    );
  }

  Widget get _contentWithTextAndIcon => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: padding,
        ),
        child: Icon(
          icon,
          color: color,
          size: iconSize,
        ),
      );
}
