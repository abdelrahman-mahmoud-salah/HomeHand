import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/core/widget/button_app.dart';
import 'package:homehand/core/widget/drop_down_icon.dart';
import 'package:homehand/featuers/Auth/featuers/register/UI/widget/additonal_information_worker.dart';

class ChosseKindCustomer extends StatefulWidget {
  ChosseKindCustomer({
    super.key,
  });

  String customer = 'user';

  @override
  State<ChosseKindCustomer> createState() => _ChosseKindCustomerState();
}

class _ChosseKindCustomerState extends State<ChosseKindCustomer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonApp(
                onPressed: () {
                  setState(() {
                    widget.customer = 'user';
                  });
                },
                style: widget.customer != 'user'
                    ? TextStyles.font14BlueSemiBold
                        .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600)
                    : TextStyles.font16WhiteMedium,
                widthpading: 20,
                color: widget.customer != 'user'
                    ? ColorsManager.mainBlue
                    : Colors.white,
                icon: '',
                heighticon: 20,
                widthicon: 20,
                side: widget.customer != 'user'
                    ? const BorderSide(color: ColorsManager.mainBlue, width: 2)
                    : const BorderSide(color: Colors.white, width: 2),
                height: 2,
                textutton: 'User   ',
                backgroundColor: widget.customer != 'user'
                    ? const MaterialStatePropertyAll(
                        ColorsManager.white,
                      )
                    : const MaterialStatePropertyAll(ColorsManager.mainBlue),
              ),
              ButtonApp(
                onPressed: () {
                  setState(() {
                    widget.customer = 'worker';
                  });
                },
                widthpading: 20,
                color: widget.customer == 'user'
                    ? ColorsManager.mainBlue
                    : Colors.white,
                icon: '',
                heighticon: 20.h,
                widthicon: 20.w,
                // ignore: lines_longer_than_80_chars
                side: widget.customer == 'user'
                    ? BorderSide(color: ColorsManager.mainBlue, width: 2.w)
                    : BorderSide(color: Colors.white, width: 2.w),
                height: 2,
                textutton: 'Worker',
                // ignore: lines_longer_than_80_chars
                style: widget.customer == 'user'
                    ? TextStyles.font14BlueSemiBold
                        .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600)
                    : TextStyles.font16WhiteMedium,
                backgroundColor: widget.customer == 'user'
                    ? const MaterialStatePropertyAll(ColorsManager.white)
                    : const MaterialStatePropertyAll(ColorsManager.mainBlue),
              ),
            ],
          ),
          AdditionalinformationForWorker(Customer: widget.customer),
        ],
      ),
    );
  }
}
