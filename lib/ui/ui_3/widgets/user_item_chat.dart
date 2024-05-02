import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserItemChat extends StatelessWidget {
  const UserItemChat(
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
      margin: EdgeInsets.only(left: 20.w, right: 32.w, top: 20.h, bottom: 30.h),
      padding:
          EdgeInsets.only(left: 13.w, right: 28.w, bottom: 15.h, top: 15.h),
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
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 6.w,
                      height: 6.h,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [
                          Color(0xff53E88B),
                          Color(0xff15BE77),
                        ]),
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      lastMessage,
                      style: TextStyle(
                        color: const Color(0xff3B3B3B).withOpacity(0.3),
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SvgPicture.asset('assets/icons/ui_3_icons/call.svg')
        ],
      ),
    );
  }
}
