import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/themes.dart';

class DeskTopSignInPage extends StatelessWidget {
  const DeskTopSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(40).w,
                  child: SizedBox(
                    width: 958.w,
                    height: 958.h,
                    child: SvgPicture.asset(
                      'assets/images/deetshome.svg',
                      semanticsLabel: 'signin page image',
                    ),
                  ),
                ),
                Container(
                  width: 830.w,
                  height: 1080.h,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 1)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text('Open Orchard',
                              style: GoogleFonts.notoSerifDisplay(
                                  fontSize: 80.sp,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50.0.sp, right: 50.sp),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: 'open_orchard@orchard.com',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50.r)))),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50.sp, right: 50.sp),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50.r)))),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Container(
                          height: 80.h,
                          width: 730.w,
                          decoration: BoxDecoration(
                              color: black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.r))),
                          child: Center(
                            child: Text(
                              'Signin',
                              style: TextStyle(color: white, fontSize: 30.sp),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Invites are only accepted at the moment!',
                          style: TextStyle(fontSize: 18.sp),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
