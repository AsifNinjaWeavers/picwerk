import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  ThemeData get themedata => ThemeData(
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
          //w700 for bold    
          headline1: GoogleFonts.inter(
              color: const Color(0xff25222D), fontWeight: FontWeight.w700,fontSize: 12),    
          button: GoogleFonts.inter(
            color: const Color(0xffFFFFFF),
            fontWeight: FontWeight.w700,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            showUnselectedLabels: true,
            backgroundColor: Color(0xff2F2C39),
            elevation: 0,
            selectedIconTheme:
                IconThemeData(color: Color(0xff1C5ABFF), size: 20),
            unselectedIconTheme:
                IconThemeData(color: Color(0xff159575D), size: 20)),
        primarySwatch: Colors.purple,
        primaryColor: Color(0xff1FFFFFF),
        // buttonColor: Color(0xff19A8ABF),
      );
}
