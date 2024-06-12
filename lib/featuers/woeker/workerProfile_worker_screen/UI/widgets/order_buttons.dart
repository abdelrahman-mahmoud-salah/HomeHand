import 'package:flutter/material.dart';
import 'package:homehand/core/helper/extinstion.dart';
import 'package:homehand/core/routes/Routes_App.dart';
import 'package:homehand/core/theming/colors.dart';



class OrderButtons extends StatefulWidget {
  const OrderButtons({super.key});

  @override
  State<OrderButtons> createState() => _OrderButtonsState();
}

class _OrderButtonsState extends State<OrderButtons> {
  bool isWorker = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
          onPressed: () {
            context.pushNamed(RoutesApp.orderDetails);
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: ColorsManager.mainBlue,
            fixedSize: const Size(130, 40),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: const Text(
            "View details",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        if (isWorker)
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
              fixedSize: const Size(130, 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: const Text(
              "Cancel",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
      ],
    );
  }
}
