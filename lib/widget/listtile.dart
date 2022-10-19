import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomListTile extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Function ontap;
  const CustomListTile(
      {required this.text,
      required this.style,
      required this.ontap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontap(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: style),
          Icon(
            Icons.keyboard_arrow_right,
            color: style.color,
          ),
        ],
      ),
    );
  }
}
