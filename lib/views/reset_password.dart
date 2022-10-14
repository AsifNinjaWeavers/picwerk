import 'package:flutter/material.dart';
import 'package:picwerk/constant/image.dart';
import 'package:picwerk/utility/colors.dart';

import '../constant/all_text.dart';
import '../constant/button_widget.dart';
import '../constant/input_formfield.dart';

class ResetPassword extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.SigninColor,
      body: SingleChildScrollView(
        child: Container(
          // alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 23, right: 23),
          child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: formkey,
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
                  AllText.reset,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        fontSize: 48,
                      ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(AllText.password,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          fontSize: 48,
                        )),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 0,
                  ),
                  child: Text(AllText.enternewpasswordtext,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(fontSize: 14)),
                ),
                const SizedBox(
                  height: 42,
                ),
                TextInputFieldpassword(
                  controller: password,
                  hinttext: AllText.New + " " + AllText.password,
                ),
                const SizedBox(
                  height: 15,
                ),
                TextInputFieldpassword(
                  controller: confirmpassword,
                  hinttext: AllText.confirm + " " + AllText.password,
                ),
                const SizedBox(
                  height: 25,
                ),
                Submit_button_Widget(
                  text: AllText.reset,
                  onpreesed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
