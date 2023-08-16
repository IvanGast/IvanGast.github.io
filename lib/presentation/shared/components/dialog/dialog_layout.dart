import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/presentation/layout/responsive_layout.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';
import 'package:myapp/presentation/shared/style/spacing.dart';

class CustomDialogLayout extends StatelessWidget {
  const CustomDialogLayout({
    super.key,
    required this.child,
    required this.closeCallback,
  });

  final Widget child;
  final VoidCallback closeCallback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: CustomColors.blackTransparent,
      child: Center(
        child: ResponsiveLayout(
          mobileContent: _Layout(
            closeCallback: closeCallback,
            mobile: true,
            child: child,
          ),
          desktopContent: _Layout(
            closeCallback: closeCallback,
            mobile: false,
            child: child,
          ),
        ),
      ),
    );
  }
}

class _Layout extends StatelessWidget {
  const _Layout({
    required this.mobile,
    required this.closeCallback,
    required this.child,
  });

  final bool mobile;
  final Widget child;
  final VoidCallback closeCallback;
  static const double _dialogWidth = Breakpoints.maxDialogWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.black,
      width: mobile
          ? ScreenUtil().screenWidth - CustomSpaces.space4x
          : _dialogWidth,
      padding:
          EdgeInsets.all(mobile ? CustomSpaces.space2x : CustomSpaces.space4x),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: closeCallback,
                icon: Icon(
                  Icons.close,
                  size: _iconSize,
                  color: CustomColors.white,
                ),
              )
            ],
          ),
          child,
        ],
      ),
    );
  }

  double get _iconSize =>
      Breakpoints.isMobile ? CustomSpaces.space2x : CustomSpaces.space4x;
}
