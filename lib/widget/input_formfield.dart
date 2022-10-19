// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextInputField extends StatefulWidget {
  bool normalfield;
  Function? validator;
  TextInputField({
    Key? key,
    required this.keyboardtype,
    required this.validator,
    required this.controller,
    required this.hinttext,
    required this.normalfield,
    required this.labeltext,
    this.multiline = false,
  }) : super(key: key);
  final TextInputType keyboardtype;
  final TextEditingController controller;
  final String? hinttext;
  final String? labeltext;
  bool multiline;

  @override
  State<TextInputField> createState() => _TextInputFieldState();
}

class _TextInputFieldState extends State<TextInputField> {
  bool _showpassword = true;
  IconData _PasswordShowIcon = Icons.visibility_rounded;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardtype,
      obscureText: widget.normalfield ? false : _showpassword,
      cursorColor: const Color(0xff1f5f5f5),
      validator: (value) => widget.validator!(value),
      style: const TextStyle(
        color: Colors.white,
      ),
      textAlign: TextAlign.start,
      minLines: widget.multiline == true ? null : 1,
      expands: widget.multiline == true ? true : false,
      maxLines: widget.multiline == true ? null : 1,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        alignLabelWithHint: true,
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
        labelStyle: TextStyle(height: 0.8, fontSize: 10),
        contentPadding:
            const EdgeInsets.only(top: 13, bottom: 13, left: 20, right: 20),
        fillColor: const Color(0xff138353d),
        hintText: widget.hinttext,
        labelText: widget.labeltext,
        isDense: true,
        hintStyle:
            Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 14),
        filled: true,
        border: OutlineInputBorder(
            borderRadius:
                BorderRadius.circular(widget.multiline == true ? 20 : 30)),
        focusedBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(widget.multiline == true ? 20 : 30),
          borderSide: BorderSide(
              color:
                  widget.multiline == true ? Color(0xff1c5abff) : Colors.white),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius:
              BorderRadius.circular(widget.multiline == true ? 20 : 30),
        ),
      ),
    );
  }
}
