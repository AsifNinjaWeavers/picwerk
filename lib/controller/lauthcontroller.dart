import 'dart:core';

class AuthCOntroller {
  static String validateEmail(String value) {
    if (value.isEmpty) {
      return "Required";
    } else {
      bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(value);
      if (!emailValid) {
        return "Please Enter Correct Email";
      } else {
        return '';
      }
    }
  }

  static String validatePass(value) {
    if (value.length == 0) {
      return "Required";
    } else if (value.length < 8) {
      return "Password Should Be Minimum 8 Character";
    } else {
      return "";
    }
  }
}
