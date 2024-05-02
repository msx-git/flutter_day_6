import 'package:flutter/material.dart';
import 'package:flutter_day_6/ui/ui_1/widgets/food_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Ui1 extends StatelessWidget {
  const Ui1({super.key});

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
            SizedBox(height: 60.h),

            /// TEXT
            Padding(
              padding: EdgeInsets.only(left: 31.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find Your\nFavorite Food',
                    style: GoogleFonts.ptSans(
                      color: const Color(0xff09051C),
                      fontSize: 31.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SvgPicture.asset('assets/icons/ui_1_icons/bell.svg')
                ],
              ),
            ),

            /// Searchfield
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 18.w, vertical: 13.h),
                    decoration: BoxDecoration(
                        color: const Color(0xffF9A84D).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15.r)),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/ui_1_icons/search.svg'),
                        SizedBox(width: 19.w),
                        Text(
                          'What do you want to order?',
                          style: TextStyle(
                            color: const Color(0xffDA6317).withOpacity(0.4),
                            fontSize: 12.sp,
                          ),
                        ),
                        SizedBox(width: 36.w),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Container(
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: const Color(0xffF9A84D).withOpacity(0.1),
                    ),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/icons/ui_1_icons/filter.svg',
                    ),
                  )
                ],
              ),
            ),

            /// Filtered Chip
            Container(
              margin: EdgeInsets.only(left: 25.w, top: 20.h, bottom: 20.h),
              width: 92.w,
              height: 44.h,
              decoration: BoxDecoration(
                  color: const Color(0xffFEAD1D).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15.r)),
              child: Row(
                children: [
                  SizedBox(width: 20.w),
                  Text(
                    'Soup',
                    style: TextStyle(
                        color: const Color(0xffDA6317), fontSize: 12.sp),
                  ),
                  SizedBox(width: 8.w),
                  Transform.rotate(
                    angle: 150,
                    child: Icon(
                      Icons.add,
                      color: const Color(0xffDA6317),
                      size: 18.w,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 31.w),
              child: Text(
                'Popular Menu',
                style: GoogleFonts.ptSans(
                    color: const Color(0xff09051C),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const FoodItem(
              name: 'Herbal Pancake',
              place: 'Warung Herbal',
              price: 7,
              image: 'pancake',
            ),
            const FoodItem(
              name: 'Fruit Salada',
              place: 'Wijie Resto',
              price: 5,
              image: 'salad',
            ),
            const FoodItem(
              name: 'Green Noddle',
              place: 'Noodle Home',
              price: 15,
              image: 'noodle',
            ),
            const Expanded(child: SizedBox()),

            /// Bottom Navigation Bar
            Container(
              margin: const EdgeInsets.all(10),
              padding: EdgeInsets.only(left: 20.w, top: 15.h, bottom: 15.h),
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
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 17.w),
                    margin: EdgeInsets.only(right: 46.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: LinearGradient(colors: [
                        const Color(0xff53E88B).withOpacity(0.1),
                        const Color(0xff15BE77).withOpacity(0.1),
                      ]),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/ui_1_icons/home.svg'),
                        SizedBox(width: 12.w),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: const Color(0xff09051C),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp),
                        )
                      ],
                    ),
                  ),

                  /// User
                  SvgPicture.asset('assets/icons/ui_1_icons/user.svg'),
                  SizedBox(width: 37.w),
                  SvgPicture.asset('assets/icons/ui_1_icons/cart.svg'),
                  SizedBox(width: 41.w),
                  SvgPicture.asset('assets/icons/ui_1_icons/chat.svg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
