// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Elevetd_Button_Widget extends StatelessWidget {
  final Widget widget;
  final Function onpreesed;
  const Elevetd_Button_Widget({
    required this.widget,
    required this.onpreesed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () => onpreesed(),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          backgroundColor:
              const MaterialStatePropertyAll<Color>(Color(0xff1594c76)),
        ),
        child: widget,
      ),
    );
  }
}
