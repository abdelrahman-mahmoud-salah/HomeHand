import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/di/dependace_injection.dart';

import 'package:homehand/homehand_app.dart';

void main() async {
  setupGetIt();

  await ScreenUtil
      .ensureScreenSize(); // to  solve the text disappearing on release mode

  runApp(const HomeHand());
}
