import 'package:flutter/material.dart';
import 'package:picwerk/constant/button_widget.dart';
import 'package:picwerk/constant/input_formfield.dart';
import 'package:picwerk/utility/colors.dart';
import 'package:picwerk/views/forgot_password.dart';

import '../constant/all_text.dart';
import '../constant/image.dart';
import 'home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.SigninColor,
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: formkey,
          child: Container(
            // alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: 23, right: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 103,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 0,
                  ),
                  // color: Colors.blue,
                  height: 37,
                  width: 155,
                  child: Image.asset(
                    ImageConstant.imagedata,
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(
                  height: 45,
                ),
                Text(
                  AllText.signin,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 48),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(AllText.PleaseSignintoyouraccount,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14)),
                const SizedBox(
                  height: 42,
                ),
                Textinputfield(
                  controller: email,
                  hinttext: '${AllText.email} ${AllText.address}',
                ),
                const SizedBox(
                  height: 15,
                ),
                TextInputFieldpassword(
                  controller: password,
                  hinttext: AllText.Password,
                ),
                const SizedBox(
                  height: 3,
                ),
                TextButtonWidget(
                  onpreesed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ForgetPssword()));
                  },
                  text:
                      "${AllText.forgot} ${AllText.password}${AllText.questionmark}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Color(0xff949398), fontSize: 12),
                ),
                Submit_button_Widget(
                  onpreesed: () {
                    formkey.currentState!.validate()
                        ? debugPrint('tryee'.toString())
                        : debugPrint(
                            formkey.currentState!.validate().toString());
                  },
                  text: AllText.signin,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AllText.Donthaveanaccount,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                          ),
                    ),
                    TextButtonWidget(
                      onpreesed: () {},
                      text: AllText.signup,
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          decorationThickness: 2,
                          color: Color(0xff949398)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
