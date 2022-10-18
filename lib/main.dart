import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:picwerk/views/home.dart';
import 'package:picwerk/views/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryTextTheme: GoogleFonts.lato(),
        //w500 for medium

        textTheme: TextTheme(
          subtitle1: GoogleFonts.inter(
            color: const Color(0xffC5ABFF),
            fontWeight: FontWeight.w500,
          ),
          subtitle2: GoogleFonts.inter(
            color: const Color(0xffFFFFFF),
            fontWeight: FontWeight.w100,
          ),
          //w300 for light
          bodyText1: GoogleFonts.inter(
              color: const Color(0xffAAAAAA), fontWeight: FontWeight.w300),
          //w400 for regular
          bodyText2: GoogleFonts.inter(
              color: const Color(0xff858487), fontWeight: FontWeight.w400),
          button: GoogleFonts.inter(
            color: const Color(0xffFFFFFF),
            fontWeight: FontWeight.w700,
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            showUnselectedLabels: true,
            backgroundColor: Color(0xff2F2C39),
            elevation: 0,
            selectedLabelStyle: Theme.of(context).textTheme.subtitle1!.copyWith(
                  fontSize: 10,
                  color: const Color(0xff1c5abff),
                ),
            unselectedLabelStyle: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontSize: 10, color: Color(0xff159575D)),
            selectedIconTheme:
                IconThemeData(color: Color(0xff1C5ABFF), size: 20),
            unselectedIconTheme:
                IconThemeData(color: Color(0xff159575D), size: 20)),
        primarySwatch: Colors.blueGrey,
        primaryColor: Color(0xff1FFFFFF),
      ),
      home: Home(),
    );
  }
}
