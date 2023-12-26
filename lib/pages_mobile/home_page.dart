import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Text('Open Orchard',
                style: GoogleFonts.notoSerifDisplay(
                    fontSize: 150.sp, fontWeight: FontWeight.bold)),
            expandedHeight: 50,
          ),
        ],
      ),
    );
  }
}
