import 'package:deets_insider/pages_mobile/home_page.dart';
import '../widgets/text_input.dart';
import '../widgets/cta_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileSignInPage extends StatelessWidget {
  const MobileSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
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
                      const TextInput(
                        hintText: 'open_orchard@orchard.com',
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const TextInput(
                          hintText: 'Password',
                          obscureText: true,
                          suffixIcon: Icon(Icons.lock_rounded)),
                      SizedBox(
                        height: 20.h,
                      ),
                      GestureDetector(
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const HomePageMobile(),
                              )),
                          child: const CtaButton(text: 'Signin')),
                      SizedBox(
                        height: 20.h,
                      ),
                      const Text(
                        'Invites are only accepted at the moment!',
                        style: TextStyle(fontSize: 15),
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
