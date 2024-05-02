import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodItem extends StatelessWidget {
  const FoodItem(
      {super.key,
      required this.name,
      required this.place,
      required this.price,
      required this.image});

  final String name;
  final String place;
  final int price;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w, right: 32.w, top: 20.h),
      padding:
          EdgeInsets.only(left: 10.w, right: 20.w, bottom: 11.h, top: 11.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.r),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xff5A6CEA).withOpacity(0.07),
            blurRadius: 50.r,
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/$image.png',
            height: 64.h,
            width: 64.w,
          ),
          SizedBox(width: 21.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      color: const Color(0xff09051C)),
                ),
                Text(
                  place,
                  style: TextStyle(
                      color: const Color(0xff3B3B3B).withOpacity(0.3),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Text(
            '\$$price',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22.sp,
                color: const Color(0xffFEAD1D)),
          ),
        ],
      ),
    );
  }
}
