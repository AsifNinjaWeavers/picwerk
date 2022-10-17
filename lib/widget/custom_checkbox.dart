import 'package:flutter/material.dart';

class Customcheckbox extends StatefulWidget {
  const Customcheckbox({
    required this.accept,
    Key? key,
  }) : super(key: key);
  final Function(bool) accept;
  @override
  State<Customcheckbox> createState() => _CustomcheckboxState();
}

class _CustomcheckboxState extends State<Customcheckbox> {
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _checkbox,
      onChanged: ((value) => setState(() {
            if (_checkbox) {
              _checkbox = false;
              widget.accept(_checkbox);
            } else {
              _checkbox = true;
              widget.accept(_checkbox);
            }
          })),

      shape: const CircleBorder(),
      fillColor: const MaterialStatePropertyAll<Color>(Color(0xff1594c76)),
      checkColor: Colors.white,
      // shape: ,
    );
  }
}
