import 'package:flutter/material.dart';
import 'package:picwerk/constant/image.dart';
import 'package:picwerk/utility/colors.dart';

import '../constant/all_text.dart';
import '../constant/button_widget.dart';
import '../constant/input_formfield.dart';
import 'forgot_password.dart';

class SignUp extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey();
  final TextEditingController firstname = TextEditingController();
  final TextEditingController lastname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();
  SignUp({super.key});

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
                  AllText.signup,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 48),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(AllText.createtyouraccountdialouge,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14)),
                const SizedBox(
                  height: 42,
                ),
                Textinputfield(
                  controller: firstname,
                  hinttext: '${AllText.first} ${AllText.name}',
                ),
                const SizedBox(
                  height: 15,
                ),
                Textinputfield(
                  controller: lastname,
                  hinttext: '${AllText.last} ${AllText.name}',
                ),
                const SizedBox(
                  height: 15,
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
                  height: 15,
                ),
                TextInputFieldpassword(
                  controller: confirmpassword,
                  hinttext: '${AllText.confirm} ${AllText.Password}',
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    customcheckbox(),
                    Text(
                      AllText.iacceptthe,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Color(0xff858487)),
                    ),
                    TextButtonWidget(
                      onpreesed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ForgetPssword()));
                      },
                      text: AllText.terms,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                          ),
                    ),
                  ],
                ),
                Submit_button_Widget(
                  onpreesed: () {
                    formkey.currentState!.validate()
                        ? debugPrint('tryee'.toString())
                        : debugPrint(
                            formkey.currentState!.validate().toString());
                  },
                  text: AllText.signup,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AllText.alreadyaccountdialouge,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 14,
                          ),
                    ),
                    TextButtonWidget(
                      onpreesed: () {},
                      text: AllText.signin,
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
