import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/styels.dart';

class ButtonApp extends StatelessWidget {
  ButtonApp(
      {super.key,
      this.backgroundColor,
      required this.textutton,
      this.style,
      required this.height,
      this.side,
      this.color,
      this.heighticon,
      this.widthicon,
      this.widthpading,
      required this.icon,
      this.onPressed});
  final MaterialStateProperty<Color?>? backgroundColor;
  final String textutton;
  final TextStyle? style;
  final String icon;
  final double height;
  final BorderSide? side;
  double? heighticon;
  double? widthicon;
  Color? color;
  double? widthpading;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            padding:
                MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 16)),
            fixedSize: MaterialStatePropertyAll(Size(double.infinity, height)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                side: side ?? BorderSide.none,
                borderRadius: BorderRadius.circular(23))),
            backgroundColor: backgroundColor),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: icon!.isEmpty
              ? MainAxisAlignment.center
              : MainAxisAlignment.start,
          children: [
            icon.isEmpty
                ? verticalSpace(0)
                : CheckImage(icon, color, heighticon, widthicon, widthpading),
            Center(
              child: Text(
                textAlign: TextAlign.center,
                textutton,
                style: style ??
                    TextStyles.font16WhiteMedium.copyWith(
                      fontSize: 15,
                    ),
              ),
            ),
          ],
        ));
  }
}

Widget CheckImage(String icon, Color? color, double? height, double? width,
    double? widthpading) {
  return Row(
    children: [
      Image.asset(
        icon,
        height: height ?? 14,
        width: width ?? 14,
        color: color,
      ),
      horizentalSpace(widthpading ?? 40)
    ],
  );
}
