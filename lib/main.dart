import 'package:deets_insider/pages_mobile/mobile_signin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pages_desktop/desk_top_signin_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      splitScreenMode: true,
      child: MaterialApp(
          title: 'deetsinsider',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(245, 255, 250, 1),
          ),
          initialRoute: '/',
          home: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 550) {
                return const DeskTopSignInPage();
              } else {
                return const MobileSignInPage();
              }
            },
          )),
    );
  }
}
