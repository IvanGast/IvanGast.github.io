import 'dart:math';

import 'package:flutter_screenutil/flutter_screenutil.dart';

/// There are few breakpoints by default, inspired by common device resolutions:
abstract class Breakpoints {
  static const mobile = 640;
  static const tablet = 769;
  static const desktop = 1024;
  static const _maxScreenSize = 2000;
  static const _maxContentWidth = 1520;
  static const double maxDialogWidth = 794;

  static double get maxScreenSize =>
      min(ScreenUtil().screenWidth, _maxScreenSize.toDouble());

  static double get screenPaddingWidth =>
      max((ScreenUtil().screenWidth - _maxScreenSize) / 2, 0);

  static double get contentPaddingWidth =>
      (max((ScreenUtil().screenWidth - _maxContentWidth) / 2, 0)) -
          screenPaddingWidth;

  static get isMobile => ScreenUtil().screenWidth < Breakpoints.desktop;
}