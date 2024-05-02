import 'package:flutter/material.dart';
import 'package:flutter_day_6/ui/ui_3/widgets/message.dart';
import 'package:flutter_day_6/ui/ui_3/widgets/user_item_chat.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Ui3 extends StatelessWidget {
  const Ui3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375.w,
        height: 812.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/b2.png'), fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Container(
              width: 50.w,
              height: 50.h,
              margin: EdgeInsets.only(left: 25.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: const Color(0xffF9A84D).withOpacity(0.1),
              ),
              alignment: Alignment.center,
              child: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Color(0xffDA6317),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.w, top: 20.h),
              child: Text(
                'Chat',
                style: GoogleFonts.ptSans(
                  color: const Color(0xff09051C),
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const UserItemChat(
                name: 'Dianne Russel',
                lastMessage: 'Online',
                time: 'time',
                image: 'anamwp'),
            const Message(message: 'Just to order', fromSelf: false),
            const Message(
                message: 'Okay, for what level of spiciness?', fromSelf: true),
            const Message(message: 'Okay, wait a minute 👍', fromSelf: false),
            const Message(message: 'Okay I\'m waiting  👍', fromSelf: true),
            const Expanded(child: SizedBox()),
            Container(
              margin: const EdgeInsets.all(10),
              padding: EdgeInsets.only(
                left: 25.w,
                right: 32.w,
                top: 25.h,
                bottom: 25.h,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22.r),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff5A6CEA).withOpacity(0.1),
                      blurRadius: 50.r,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Okay I\'m waiting  👍',
                    style: TextStyle(
                      color: const Color(0xff181818).withOpacity(0.8),
                      fontSize: 14.sp,
                    ),
                  ),
                  SvgPicture.asset('assets/icons/ui_3_icons/send_chat.svg')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
