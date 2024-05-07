import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookBuutton extends StatelessWidget {
  const BookBuutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () {
            // context.pushNamed(Routes.serviceDetails);
          },
          style: ElevatedButton.styleFrom(
            fixedSize: Size(340.w, 75.h),
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xff0B92F0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45)),
          ),
          child: Text(
            'Book Now',
            style:
                TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
