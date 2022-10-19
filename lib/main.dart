import 'package:flutter/material.dart';
import 'package:picwerk/constant/theme.dart';
import 'package:picwerk/views/home.dart';

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
      theme: CustomTheme().themedata,
      home: Home(),
    );
  }
}
