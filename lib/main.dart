import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:picwerk/views/forgot_password.dart';
import 'package:picwerk/views/reset_password.dart';
import 'package:picwerk/views/sign_in.dart';
import 'package:picwerk/views/sign_up.dart';

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
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.w500,
          ),
          //w300 for light
          bodyText1: GoogleFonts.inter(
              color: Color(0xffAAAAAA), fontWeight: FontWeight.w300),
          //w400 for regular
          bodyText2: GoogleFonts.inter(
              color: Color(0xff858487), fontWeight: FontWeight.w400),
          button: GoogleFonts.inter(
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.w700,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: SignUp(),
    );
  }
}
