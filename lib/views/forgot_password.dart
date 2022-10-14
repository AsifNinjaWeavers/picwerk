import 'package:flutter/material.dart';
import 'package:picwerk/constant/all_text.dart';
import 'package:picwerk/constant/image.dart';
import 'package:picwerk/views/reset_password.dart';

import '../constant/button_widget.dart';
import '../constant/input_formfield.dart';
import '../utility/colors.dart';

class ForgetPssword extends StatelessWidget {
  TextEditingController email = TextEditingController();
  ForgetPssword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColor.SigninColor,
      body: SingleChildScrollView(
        child: Container(
          // alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 23, right: 23),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 100,
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
                height: 40,
              ),
              Text(
                AllText.forgot,
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
              Text(
                AllText.forgetpassworddialouge,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 14),
              ),
              const SizedBox(
                height: 60,
              ),
              Textinputfield(
                controller: email,
                hinttext: '${AllText.email} ${AllText.address}',
              ),
              const SizedBox(
                height: 20,
              ),
              Submit_button_Widget(
                text: AllText.submit,
                onpreesed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => ResetPassword()),
                      (route) => false);
                },
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AllText.dontgetlink,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14),
                  ),
                  TextButtonWidget(
                    onpreesed: () {},
                    text: AllText.resend,
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
    );
  }
}
