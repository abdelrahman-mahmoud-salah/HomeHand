import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/styels.dart';
import '../../../../../../core/widget/button_app.dart';
import '../../../../../../core/widget/drop_down_icon.dart';
import 'additonal_information_worker.dart';
import '../../logic/cubit/register_cubit.dart';

class ChosseKindCustomer extends StatefulWidget {
  ChosseKindCustomer({
    super.key,
  });

  @override
  State<ChosseKindCustomer> createState() => _ChosseKindCustomerState();
}

class _ChosseKindCustomerState extends State<ChosseKindCustomer> {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
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
                    cubit.userRole = 'client';
                  });
                  debugPrint(cubit.userRole);
                },
                style: cubit.userRole != 'worker'
                    ? TextStyles.font14BlueSemiBold
                        .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600)
                    : TextStyles.font16WhiteMedium,
                widthpading: 20,
                color: cubit.userRole != 'worker'
                    ? ColorsManager.mainBlue
                    : Colors.white,
                icon: '',
                heighticon: 20,
                widthicon: 20,
                side: cubit.userRole != 'worker'
                    ? const BorderSide(color: ColorsManager.mainBlue, width: 2)
                    : const BorderSide(color: Colors.white, width: 2),
                height: 2,
                textutton: 'client   ',
                backgroundColor: cubit.userRole != 'worker'
                    ? const MaterialStatePropertyAll(
                        ColorsManager.white,
                      )
                    : const MaterialStatePropertyAll(ColorsManager.mainBlue),
              ),
              ButtonApp(
                onPressed: () {
                  setState(() {
                    cubit.userRole = 'worker';
                  });

                  debugPrint(cubit.userRole);
                },
                widthpading: 20,
                color: cubit.userRole != 'client'
                    ? ColorsManager.mainBlue
                    : Colors.white,
                icon: '',
                heighticon: 20.h,
                widthicon: 20.w,
                // ignore: lines_longer_than_80_chars
                side: cubit.userRole != 'client'
                    ? BorderSide(color: ColorsManager.mainBlue, width: 2.w)
                    : BorderSide(color: Colors.white, width: 2.w),
                height: 2,
                textutton: 'Worker',
                // ignore: lines_longer_than_80_chars
                style: cubit.userRole != 'client'
                    ? TextStyles.font14BlueSemiBold
                        .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w600)
                    : TextStyles.font16WhiteMedium,
                backgroundColor: cubit.userRole != 'client'
                    ? const MaterialStatePropertyAll(ColorsManager.white)
                    : const MaterialStatePropertyAll(ColorsManager.mainBlue),
              ),
            ],
          ),
       AdditionalinformationForWorker() ],
      ),
    );
  }
}
