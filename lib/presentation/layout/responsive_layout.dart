import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.mobileContent,
    this.desktopContent,
    this.tabletContent,
  }) : super(key: key);

  final Widget mobileContent;
  final Widget? desktopContent;
  final Widget? tabletContent;

  @override
  Widget build(BuildContext context) {
    if (ScreenUtil().screenWidth < Breakpoints.mobile) {
      return mobileContent;
    }
    if (ScreenUtil().screenWidth < Breakpoints.desktop) {
      return tabletContent ?? mobileContent;
    }
    return desktopContent ?? mobileContent;
  }
}
