import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/core/helper/spacing.dart';
import 'package:homehand/core/theming/colors.dart';
import 'package:homehand/core/theming/styels.dart';
import 'package:homehand/core/widget/button_app.dart';
import 'package:homehand/featuers/Auth/featuers/register/logic/cubit/register_cubit.dart';
import 'package:homehand/featuers/customer/featuers/service_details/logic/order_cubit.dart';
import '../widgets/details_item.dart';

class ServiceDetailsInfo extends StatefulWidget {
  const ServiceDetailsInfo({super.key, required this.id});
  final String id;
  @override
  State<ServiceDetailsInfo> createState() => _ServiceDetailsInfoState();
}

class _ServiceDetailsInfoState extends State<ServiceDetailsInfo> {
  @override
  Widget build(BuildContext context) {
    context.read<OrderCubit>().id=widget.id;
    final cubit = context.read<OrderCubit>();
    return SingleChildScrollView(
      child: Form(
        key: context.read<OrderCubit>().formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40).w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About this service',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10).h,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: const Text(
                      'Book your professional handyman service for any of your home needs. This service is charged at \$60 per hour, plus any parts if needed.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff9D9D9D),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              verticalSpace(10),
              CustomColumn(
                text: 'Service Description',
                textFieldHeight: 120,
                controller: context.read<OrderCubit>().descriptionController,
              ),
              CustomColumn(
                text: 'Date',
                textFieldHeight: 80,
                controller: context.read<OrderCubit>().dateController,
              ),
              CustomColumn(
                text: 'Address',
                textFieldHeight: 50,
                controller: context.read<OrderCubit>().addressController,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Payment',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 16.sp,
                    ),
                  ),
                  verticalSpace(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            context.read<OrderCubit>().isCash = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(110.w, 35.h),
                          foregroundColor: Colors.white,
                          backgroundColor: context.read<OrderCubit>().isCash
                              ? ColorsManager.darkBlue
                              : ColorsManager.lightGray,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 5,
                        ),
                        child: Text(
                          'Cash',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ),
                      horizentalSpace(20),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            context.read<OrderCubit>().isCash = false;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(110.w, 35.h),
                          foregroundColor: Colors.white,
                          backgroundColor: context.read<OrderCubit>().isCash
                              ? ColorsManager.lightGray
                              : ColorsManager.darkBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 8,
                        ),
                        child: Text(
                          'Credit',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              verticalSpace(10),
              ButtonApp(
                onPressed: () async {
                  final image = await cubit.picKFromGallery();
                  final images = cubit.image;

                  debugPrint(images!.path);
                },
                style: TextStyles.font16WhiteMedium
                  ..copyWith(fontSize: 1.sp, overflow: TextOverflow.clip),
                widthpading: 20.w,
                color: Colors.white,
                icon: cubit.image != null
                    ? 'assets/images/logo_onboarding_andorid12.png'
                    : 'assets/images/share-2.png',
                heighticon: 20,
                widthicon: 20,
                side: const BorderSide(color: Colors.white, width: 2),
                height: 2.h,
                textutton: 'Upload order image (optional)',
                backgroundColor:
                const MaterialStatePropertyAll(ColorsManager.mainBlue),
              ),
              verticalSpace(30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    context.read<OrderCubit>().emitOrderStates();
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(340.w, 75.h),
                    foregroundColor: Colors.white,
                    backgroundColor: ColorsManager.mainBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
