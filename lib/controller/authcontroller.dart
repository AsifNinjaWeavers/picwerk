import 'dart:core';

import 'package:flutter/material.dart';

class AuthController {
  static final TextEditingController email = TextEditingController();
  static final TextEditingController password = TextEditingController();
  static final TextEditingController confirmpassword = TextEditingController();
  static final TextEditingController firstname = TextEditingController();
  static final TextEditingController lastname = TextEditingController();
  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return "Required";
    } else {
      bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value);
      if (!emailValid) {
        return "Please Enter Correct Email";
      } else {
        // email
        return null;
      }
    }
  }

  static String? validatePass(value) {
    debugPrint(value);
    if (value.length == 0) {
      return "Required";
    } else if (value.length < 8) {
      return "Password Should Be Minimum 8 Character";
    } else if (!confirmpassword.text.toString().isEmpty) {
      if (!(password.text.toString() == confirmpassword.text.toString())) {
        return 'Password Not Match';
      } else {
        return null;
      }
    } else {
      return null;
    }
  }

  static String? validateconfirmPass(
      value, String password, String confirmpassword) {
    if (value.length == 0) {
      return "Required";
    } else if (value.length < 8) {
      return "Password Should Be Minimum 8 Character";
    } else if (password == confirmpassword) {
      return 'Password Not Match';
    } else {
      return null;
    }
  }

  static String? validateName(String value) {
    if (value.isEmpty) {
      return "Required";
    } else {
      return null;
    }
  }
}
