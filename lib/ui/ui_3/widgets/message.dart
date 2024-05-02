import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Message extends StatelessWidget {
  const Message({super.key, required this.message, required this.fromSelf});

  final String message;
  final bool fromSelf;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          fromSelf ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
          padding:
              EdgeInsets.only(left: 12.w, bottom: 14.h, top: 14.h, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.r),
            gradient: LinearGradient(
              colors: fromSelf
                  ? [Color(0xff53E88B), Color(0xff15BE77)]
                  : [Color(0xffF6F6F6), Color(0xffF6F6F6)],
            ),
          ),
          child: Text(
            message,
            style: TextStyle(
              fontSize: 14.sp,
              color: fromSelf ? Colors.white : Color(0xff181818).withOpacity(0.8),
            ),
          ),
        ),
      ],
    );
  }
}
