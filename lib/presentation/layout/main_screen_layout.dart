import 'package:flutter/material.dart';
import 'package:myapp/presentation/shared/style/breakpoints.dart';
import 'package:myapp/presentation/shared/style/colors.dart';

class MainScreenLayout extends StatelessWidget {
  const MainScreenLayout({
    Key? key,
    required this.body,
    this.appBar,
    this.extendBodyBehindAppBar = true,
    this.backgroundColor = CustomColors.lightBlack,
  }) : super(key: key);

  final Widget body;
  final PreferredSizeWidget? appBar;
  final bool extendBodyBehindAppBar;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      backgroundColor: backgroundColor,
      appBar: appBar ??
          const PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: SizedBox(),
          ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Breakpoints.screenPaddingWidth,
        ),
        child: body,
      ),
    );
  }
}
