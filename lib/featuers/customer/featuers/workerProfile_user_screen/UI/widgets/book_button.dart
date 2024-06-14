import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/helper/extinstion.dart';
import '../../../../../../core/routes/Routes_App.dart';

class BookBuutton extends StatelessWidget {
  const BookBuutton({
    super.key, required this.id,
  });
final String id;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.pushNamed(RoutesApp.serviceDetails ,arguments: id);
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(340.w, 75.h),
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xff0B92F0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
        ),
        child: Text(
          'Book Now',
          style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
