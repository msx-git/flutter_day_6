import 'package:flutter/material.dart';
import 'package:flutter_day_6/ui/ui_2/widgets/user_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Ui2 extends StatelessWidget {
  const Ui2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375.w,
        height: 812.h,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/b1.png'), fit: BoxFit.cover),
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

            const UserItem(
                name: 'Anamwp',
                lastMessage: 'Your Order Just Arrived!',
                time: '20:00',
                image: 'anamwp'),
            const UserItem(
                name: 'Guy Hawkins',
                lastMessage: 'Your Order Just Arrived!',
                time: '20:00',
                image: 'guy'),
            const UserItem(
                name: 'Leslie Alexander',
                lastMessage: 'Your Order Just Arrived!',
                time: '20:00',
                image: 'leslie'),
            const Expanded(child: SizedBox()),

            /// Bottom Navigation Bar
            Container(
              margin: const EdgeInsets.all(10),
              padding: EdgeInsets.only(left: 39.5.w, top: 15.h, bottom: 15.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22.r),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xff5A6CEA).withOpacity(0.1),
                      blurRadius: 50.r)
                ],
              ),
              child: Row(
                children: [
                  /// Home
                  SvgPicture.asset('assets/icons/ui_2_icons/home.svg'),
                  SizedBox(width: 49.5.w),

                  /// User
                  SvgPicture.asset('assets/icons/ui_2_icons/user.svg'),
                  SizedBox(width: 52.w),
                  SvgPicture.asset('assets/icons/ui_2_icons/cart.svg'),
                  SizedBox(width: 30.w),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 9.h, horizontal: 13.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: LinearGradient(colors: [
                        const Color(0xff53E88B).withOpacity(0.1),
                        const Color(0xff15BE77).withOpacity(0.1),
                      ]),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/ui_2_icons/chat.svg'),
                        SizedBox(width: 12.w),
                        Text(
                          'Chat',
                          style: TextStyle(
                            color: const Color(0xff09051C),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                  // SvgPicture.asset('assets/icons/ui_1_icons/chat.svg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
