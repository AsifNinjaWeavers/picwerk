// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class ElevetdButtonWidgetCustom extends StatelessWidget {
  final Widget widget;
  final Function onpreesed;
  ElevetdButtonWidgetCustom({
    required this.widget,
    required this.onpreesed,
    this.color = const Color(0xff1594c76),
    Key? key,
  }) : super(key: key);
  Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () => onpreesed(),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            backgroundColor: color),
        // style: ButtonStyle(
        //   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        //     RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(25.0),
        //     ),
        //   ),
        //   backgroundColor:
        //       const MaterialStatePropertyAll<Color>(color),
        // ),
        child: widget,
      ),
    );
  }
}
