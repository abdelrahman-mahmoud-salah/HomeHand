import 'package:flutter/material.dart';
import 'Custom_PageVIewItem.dart';

class PageViewsApp extends StatelessWidget {
  PageViewsApp({
    super.key,
    this.controller,
  });
  PageController? controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      controller: controller,
      children: const [
        PageViewItems(
          image: 'assets/images/onboarding1.png',
          title: 'Our Works', // Corrected spelling from 'titel' to 'title'
          subTitle: // Corrected spelling from 'subTitel' to 'subTitle'
              'Meet the backbone of our app our dedicated team of professionals. Each member is handpicked, rigorously trained, ',
        ),
        PageViewItems(
          image: 'assets/images/onboarding2.png',
          title: 'HomeHand',
          subTitle:
              'Step into the future of home services with HomeHand. From maintenance to makeovers, we bring expert solutions straight to your doorstep.',
        ),
      ],
    );
  }
}
