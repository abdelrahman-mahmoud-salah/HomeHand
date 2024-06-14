import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:homehand/featuers/Auth/featuers/login/data/model/login_repo_boody.dart';
import '../../../../../../core/helper/spacing.dart';
import '../../../../../../core/theming/colors.dart';
import '../widgets/settings_list.dart';



class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key, required this.data});
  final LoginResponse data;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned.fill(
            top: 125,
            child: Container(
              padding: const EdgeInsets.only(top: 40).h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.10),
                    spreadRadius: 5,
                    blurRadius: 1,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const SettingsList(),
            ),
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 150.w,
                      height: 150.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        border: Border.all(
                          color: ColorsManager.mainBlue,
                          width: 3.w,
                        ),
                      ),
                      child: Container(
                        width: 125.w,
                        height: 125.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[100],
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.7),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.network(
                            '${data.profile}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 8,
                      bottom: 15,
                      child: Container(
                        width: 25.w,
                        height: 25.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[200],
                          border: Border.all(
                            color: Colors.white,
                            width: 2.w,
                          ),
                        ),
                        child: const Icon(
                          Icons.edit_outlined,
                          color: Colors.blue,
                          size: 17,
                        ),
                      ),
                    ),
                  ],
                ),
                verticalSpace(15),
                Text(
                  '${data.firstName!.toUpperCase()} ${data.secondName!.toUpperCase()}',
                  style:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 20.sp,color:ColorsManager.mainBlue),
                ),
                verticalSpace(10),
                Text(
                  'ID: ${data.id!.substring(20)}',
                  style: TextStyle(
                    color: const Color(0xff242424),
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
                verticalSpace(10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
