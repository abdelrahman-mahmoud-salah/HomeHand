import 'package:flutter/material.dart';
import 'package:homehand/featuers/home_screen/widgets/offer_item.dart';


class MyPageView extends StatefulWidget {
  @override
  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  PageController _pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 180,
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: const [
              OfferComponent(),
              OfferComponent(),
              OfferComponent(),
            ],
          ),
        ),
        const SizedBox(height: 20),
        _buildSlider(),
      ],
    );
  }

  Widget _buildSlider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 3; i++)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == i ? Colors.blue : Colors.grey,
              ),
            ),
          ),
      ],
    );
  }
}
