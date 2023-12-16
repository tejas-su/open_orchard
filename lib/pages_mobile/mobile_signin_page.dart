import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes/themes.dart';

class MobileSignInPage extends StatelessWidget {
  const MobileSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SvgPicture.asset(
                'assets/images/deetshome.svg',
                semanticsLabel: 'signin page image',
                width: 378.w,
                height: 450.h,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                  width: 400,
                  height: 500,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                      color: Color.fromRGBO(245, 245, 245, 1)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text('Open Orchard',
                            style: GoogleFonts.notoSerifDisplay(
                                fontSize: 200.sp, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50.0.sp, right: 50.sp),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'open_orchard@orchard.com',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.r)))),
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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50.r)))),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 50.sp, right: 50.sp),
                        child: Container(
                          height: 80.h,
                          decoration: BoxDecoration(
                              color: black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.r))),
                          child: Center(
                            child: Text(
                              'Signin',
                              style: TextStyle(color: white, fontSize: 80.sp),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Text(
                        'Invites are only accepted at the moment!',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
