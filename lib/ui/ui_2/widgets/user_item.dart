import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserItem extends StatelessWidget {
  const UserItem(
      {super.key,
      required this.name,
      required this.lastMessage,
      required this.time,
      required this.image});

  final String name;
  final String lastMessage;
  final String time;

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w, right: 32.w, top: 20.h),
      padding:
          EdgeInsets.only(left: 10.w, right: 12.w, bottom: 10.h, top: 10.h),
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
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/$image.png',
            height: 62.h,
            width: 62.w,
          ),
          SizedBox(width: 18.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.sp,
                      color: const Color(0xff09051C)),
                ),
                Text(
                  lastMessage,
                  style: TextStyle(
                    color: const Color(0xff3B3B3B).withOpacity(0.3),
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          Text(
            time,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: const Color(0xff3B3B3B).withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }
}
