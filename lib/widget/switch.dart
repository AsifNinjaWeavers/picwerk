import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool onchanged = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: Colors.amber,
      activeTrackColor: Colors.cyan,
      inactiveThumbColor: Color(0xff1C5ABFF),
      inactiveTrackColor: Color(0xff138353D),
      // overlayColor: const MaterialStatePropertyAll<Color>(Color(0xff1594c76)),
      value: onchanged,
      onChanged: ((value) => setState(() {
            if (onchanged) {
              onchanged = false;
            } else {
              onchanged = true;
            }
          })),
    );
  }
}
