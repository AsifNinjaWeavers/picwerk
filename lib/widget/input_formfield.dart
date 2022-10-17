// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  bool normalfield;
  Function? validator;
  TextInputField({
    Key? key,
    required this.validator,
    required this.controller,
    required this.hinttext,
    required this.normalfield,
  }) : super(key: key);

  final TextEditingController controller;
  final String hinttext;

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  bool _showpassword = true;
  IconData _PasswordShowIcon = Icons.visibility_rounded;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 45,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: TextInputType.visiblePassword,
        obscureText: widget.normalfield ? false : _showpassword,
        cursorColor: const Color(0xff1f5f5f5),
        textAlign: TextAlign.justify,
        validator: (value) => widget.validator!(value),
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          suffixIcon: widget.normalfield
              ? null
              : IconButton(
                  onPressed: () {
                    setState(() {
                      if (_showpassword) {
                        _PasswordShowIcon = Icons.visibility_off;
                        _showpassword = false;
                      } else {
                        _showpassword = true;
                        _PasswordShowIcon = Icons.visibility_rounded;
                      }
                    });
                  },
                  icon: Icon(_PasswordShowIcon),
                  color: const Color(0xff1939294),
                ),
          contentPadding: const EdgeInsets.all(13),
          fillColor: const Color(0xff138353d),
          hintText: widget.hinttext,
          isDense: true,
          hintStyle:
              Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14),
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(color: Colors.white),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
