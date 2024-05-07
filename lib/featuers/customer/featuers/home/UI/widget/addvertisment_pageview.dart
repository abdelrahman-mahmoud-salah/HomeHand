import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:homehand/featuers/customer/featuers/home/UI/widget/offer_component.dart';




// ignore: must_be_immutable
class MyPageViewBoody extends StatelessWidget {
   MyPageViewBoody({super.key,this.pagecontroller});
  PageController? pagecontroller;
 @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 170.h,
          child: PageView(
            physics: const BouncingScrollPhysics(),
            controller: pagecontroller,
            children: [
              OfferComponent(
                offerData: OfferData(
                  discountPercentage: '25%',
                  title: 'Special Offers',
                  description: 'Get a discount on every order!',
                  imageUrl:
                      'https://static.vecteezy.com/system/resources/previews/035/981/226/non_2x/ai-generated-male-construction-worker-with-helmet-isolated-on-transparent-background-free-png.png',
                ),
              ),
              OfferComponent(
                offerData: OfferData(
                  discountPercentage: '75%',
                  title: 'Special Offers',
                  description: 'Get a discount on all Ramadan',
                  imageUrl:
                      'https://i.pinimg.com/originals/62/71/8f/62718fed342b4e7b99c25c4995154d72.png',
                ),
              ),
              OfferComponent(
                offerData: OfferData(
                  discountPercentage: '50%',
                  title: 'Special Offers',
                  description: 'Get a discount on first order!',
                  imageUrl:
                      'https://www.pngmart.com/files/15/Female-office-Worker-PNG-Transparent-Image.png',
                ),
              ),
            ],
          ),
        ),
       
       
      ],
    );
  }
}
