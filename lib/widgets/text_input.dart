import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  const TextInput(
      {super.key,
      required this.hintText,
      this.obscureText = false,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.sp, right: 50.sp),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(50.r)))),
      ),
    );
  }
}
