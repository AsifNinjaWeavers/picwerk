import 'package:flutter/material.dart';
import 'package:picwerk/views/home.dart';

class Submit_button_Widget extends StatelessWidget {
  final String text;
  final Function onpreesed;
  Submit_button_Widget({
    required this.text,
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
          backgroundColor: MaterialStatePropertyAll<Color>(Color(0xff1594c76)),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.button!.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Function onpreesed;
  TextButtonWidget({
    required this.onpreesed,
    required this.text,
    required this.style,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: TextButton(
          onPressed: () => onpreesed(),
          child: Text(
            text,
            style: style,
          )),
    );
  }
}

class customcheckbox extends StatefulWidget {
  customcheckbox({
    Key? key,
  }) : super(key: key);

  @override
  State<customcheckbox> createState() => _customcheckboxState();
}

class _customcheckboxState extends State<customcheckbox> {
  bool _checkbox = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _checkbox,
      onChanged: ((value) => setState(() {
            if (_checkbox) {
              _checkbox = false;
            } else {
              _checkbox = true;
            }
          })),
      shape: CircleBorder(),
      fillColor: MaterialStatePropertyAll<Color>(Color(0xff1594c76)),
      checkColor: Colors.white,
      // shape: ,
    );
  }
}
