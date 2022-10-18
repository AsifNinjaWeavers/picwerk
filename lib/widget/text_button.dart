import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Function onpreesed;
  const TextButtonWidget({
    required this.onpreesed,
    required this.text,
    required this.style,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // alignment: Alignment.bottomRight,
        TextButton(
            onPressed: () => onpreesed(),
            child: Text(
              text,
              style: style,
            ));
  }
}
