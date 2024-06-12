import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/animation/animation_todo.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/widget/curve_onboarding.dart';
import '../widget/Shape_register.dart';
import '../widget/circleavtar_shape.dart';
import '../widget/register_bloc_listener.dart';
import '../widget/star_image.dart';

class RegisterBoody extends StatelessWidget {
  const RegisterBoody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              CurveOnBoarding(),
              Positioned(
                top: -2.h,
                right: 0.w,
                height: 281.h,
                width: 199.w,
                child: const CustomFadeInUp(
                  duration: 900,
                  child: StarImage(),
                ),
              ),
              const ShapeRegister(),
              Positioned(
                top: 7.h,
                left: -1.w,
                child: const CustomFadeInDown(
                  duration: 900,
                  child: CircleShape(
                    backgroundColor: Color.fromARGB(255, 1, 116, 199),
                  ),
                ),
              ),
              Positioned(
                left: -20.w,
                top: -20.h,
                child: const CustomFadeInUp(
                  duration: 950,
                  child: CircleShape(
                    backgroundColor: ColorsManager.mainBlue,
                  ),
                ),
              ),
              RegisterBlocListener()
           , ],
          )
        ],
      ),
    );
  }
}
