import 'package:flutter/material.dart';
import '../../../../../../core/helper/spacing.dart';
import 'addvertisment_pageview.dart';
import 'custom_dots_indicator_addvertisment.dart';

class AdvertismentHomePage extends StatefulWidget {
  const AdvertismentHomePage({super.key});

  @override
  State<AdvertismentHomePage> createState() => _AdvertismentHomePageState();
}

class _AdvertismentHomePageState extends State<AdvertismentHomePage> {
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
    return  Column(
      children: [
        MyPageViewBoody(
          pagecontroller:pagecontroller ,
        ),
        verticalSpace(10),
        CustomDotsIndicatorAddvertisment(
              onTap: (p0) {
                pagecontroller!.jumpToPage(p0);
              },
              DotIndex: pagecontroller!.hasClients
                  ? pagecontroller!.page!.toInt()
                  : 0,
            ),
      ],
    );
  }
}