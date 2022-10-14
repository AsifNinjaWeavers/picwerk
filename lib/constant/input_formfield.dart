import 'package:flutter/material.dart';
import 'package:picwerk/constant/all_text.dart';
import 'package:picwerk/controller/lauthcontroller.dart';
import 'package:picwerk/views/sign_in.dart';

class Textinputfield extends StatelessWidget {
  Textinputfield({
    required this.hinttext,
    Key? key,
    required this.controller,
  }) : super(key: key);
  final String hinttext;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 45,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        cursorColor: Color(0xff1f5f5f5),
        style: TextStyle(color: Colors.white),
        validator: (value) => AuthCOntroller.validateEmail(value!),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(13),
          fillColor: Color(0xff138353d),
          hintText: hinttext,
          hintStyle:
              Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          isDense: true, // Added this
          // contentPadding: EdgeInsets.all(8),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.white),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class TextInputFieldpassword extends StatefulWidget {
  bool _showpassword = false;
  IconData _PasswordShowIcon = Icons.visibility_off;
  TextInputFieldpassword({
    Key? key,
    required this.controller,
    required this.hinttext,
  }) : super(key: key);

  final TextEditingController controller;
  final String hinttext;

  @override
  State<TextInputFieldpassword> createState() => _TextInputFieldpasswordState();
}

class _TextInputFieldpasswordState extends State<TextInputFieldpassword> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 45,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.visiblePassword,
        obscureText: widget._showpassword,
        cursorColor: Color(0xff1f5f5f5),
        textAlign: TextAlign.justify,
        validator: (value) => AuthCOntroller.validatePass(value!),
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                if (widget._showpassword) {
                  widget._PasswordShowIcon = Icons.visibility_off;
                  widget._showpassword = false;
                } else {
                  widget._showpassword = true;
                  widget._PasswordShowIcon = Icons.visibility_rounded;
                }
              });
            },
            icon: Icon(widget._PasswordShowIcon),
            color: Color(0xff1939294),
          ),
          contentPadding: const EdgeInsets.all(13),
          fillColor: Color(0xff138353d),
          hintText: widget.hinttext,
          isDense: true,
          hintStyle:
              Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: BorderSide(color: Colors.white),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
