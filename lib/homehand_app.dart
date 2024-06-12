import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/routes/Routes_App.dart';
import 'core/routes/app_routes.dart';

class HomeHand extends StatelessWidget {
  const HomeHand({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RoutesApp.onBoarding,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
