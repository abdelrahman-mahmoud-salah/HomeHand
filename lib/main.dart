import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependace_injection.dart';
import 'core/helper/bloc_observer.dart';

import 'homehand_app.dart';

void main() async {
  setupGetIt();
  Bloc.observer = AppBlocObserver();
  await ScreenUtil
      .ensureScreenSize(); // to  solve the text disappearing on release mode

  runApp(const HomeHand());
}
