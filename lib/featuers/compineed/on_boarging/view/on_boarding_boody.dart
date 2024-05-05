import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/routes/Routes_App.dart';

import 'package:homehand/featuers/compineed/on_boarging/widget/Custom_Indicator.dart';
import 'package:homehand/featuers/compineed/on_boarging/widget/PageViews.dart';
import 'package:homehand/featuers/compineed/on_boarging/widget/onboarding_button.dart';

class OnBoardingBoody extends StatefulWidget {
  const OnBoardingBoody({super.key});

  @override
  State<OnBoardingBoody> createState() => _OnBoardingBoodyState();
}

class _OnBoardingBoodyState extends State<OnBoardingBoody> {
  PageController? pagecontroller;
  @override
  void initState() {
    pagecontroller = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
      child: Stack(
        children: [
          PageViewsApp(controller: pagecontroller),
          verticalSpace(5),
          Positioned(
              right: 10.w,
              top: 40.0.h,
              child: Visibility(
                visible: pagecontroller!.hasClients
                    ? pagecontroller!.page == 1
                        ? false
                        : true
                    : true,
                child: TextButton(
                  onPressed: () {
                    context.pushReplacementNamed(RoutesApp.login);
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color:
                            Color.fromARGB(255, 191, 191, 191).withOpacity(.7)),
                  ),
                ),
              )),
          verticalSpace(5),
          Positioned(
            right: 165.w,
            bottom: 100.h,
            child: CustomDotsIndicator(
              onTap: (p0) {
                pagecontroller!.jumpToPage(p0);
              },
              DotIndex: pagecontroller!.hasClients
                  ? pagecontroller!.page!.toInt()
                  : 0,
            ),
          ),
          verticalSpace(5),
          Positioned(
              right: pagecontroller!.hasClients
                  ? pagecontroller!.page == 1
                      ? 60.w
                      : 10.w
                  : 10.h,
              bottom: 20.h,
              child: OnBoardingButton(
                pagecontroller: pagecontroller,
              )),
        ],
      ),
    );
  }
}
