import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../themes/themes.dart';

class CtaButton extends StatelessWidget {
  final String text;
  const CtaButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.sp, right: 50.sp),
      child: Container(
        height: 80.h,
        decoration: BoxDecoration(
            color: black,
            borderRadius: BorderRadius.all(Radius.circular(50.r))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: white, fontSize: 80.sp),
          ),
        ),
      ),
    );
  }
}
