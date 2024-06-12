import 'package:flutter/material.dart';
import '../../../../core/helper/extinstion.dart';
import '../../../../core/routes/Routes_App.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styels.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key, this.pagecontroller});
  final PageController? pagecontroller;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (pagecontroller!.page! < 1) {
          pagecontroller!.nextPage(
              duration: const Duration(milliseconds: 100),
              curve: Curves.easeInOut);
        } else {
          context.pushNamed(RoutesApp.login);
        }
      },
      style: ButtonStyle(
          minimumSize: pagecontroller!.page == 1
              ? const MaterialStatePropertyAll(Size(250, 50))
              : const MaterialStatePropertyAll(Size(75, 30)),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue)),
      child: Text(
        pagecontroller!.hasClients
            ? pagecontroller!.page == 1
                ? "Get Stared"
                : "Next"
            : "Next",
        style: pagecontroller!.page == 1
            ? TextStyles.font16WhiteMedium.copyWith(fontSize: 20)
            : TextStyles.font16WhiteMedium,
      ),
    );
  }
}
