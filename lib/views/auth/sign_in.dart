import 'package:flutter/material.dart';
import 'package:picwerk/constant/image.dart';
import 'package:picwerk/views/auth/forgot_password.dart';
import 'package:picwerk/views/auth/sign_up.dart';
import 'package:picwerk/views/home.dart';
import 'package:picwerk/widget/elevetd_button_widget.dart';
import 'package:picwerk/widget/input_formfield.dart';
import 'package:picwerk/utility/colors.dart';
import 'package:picwerk/widget/text_button.dart';
import '../../constant/all_text.dart';
import '../../controller/authcontroller.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  GlobalKey<FormState> formkey = GlobalKey();
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: AllColor.backgroundcolor,
        body: SingleChildScrollView(
          child: Form(
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
                  TextInputField(
                    keyboardtype: TextInputType.emailAddress,
                    labeltext: null,
                    validator: AuthController.validateEmail,
                    normalfield: true,
                    controller: AuthController.email,
                    hinttext: '${AllText.email} ${AllText.address}',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextInputField(
                    keyboardtype: TextInputType.visiblePassword,
                    labeltext: null,
                    validator: AuthController.validatePass,
                    normalfield: false,
                    controller: AuthController.password,
                    hinttext: AllText.Password,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    alignment: Alignment.topRight,
                    child: TextButtonWidget(
                      onpreesed: () async {
                        AuthController.email.clear();
                        AuthController.password.clear();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ForgetPssword()));
                      },
                      text:
                          "${AllText.forgot} ${AllText.password}${AllText.questionmark}",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: const Color(0xff949398), fontSize: 12),
                    ),
                  ),
                  ElevetdButtonWidgetCustom(
                    onpreesed: () async {
                      formkey.currentState!.validate() ? fn() : null;
                    },
                    widget: _isLoading == true
                        ? const Center(
                            child:
                                CircularProgressIndicator(color: Colors.white),
                          )
                        : Text(
                            AllText.signin,
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(fontSize: 16),
                          ),
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
                        onpreesed: () {
                          AuthController.email.clear();
                          AuthController.password.clear();
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: ((context) => SignUp())),
                              (route) => false);
                        },
                        text: AllText.signup,
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                            decorationThickness: 2,
                            color: const Color(0xff949398)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void fn() async {
    setState(() {
      _isLoading = true;
    });
    await Future.delayed(
      const Duration(seconds: 5),
      (() {
        AuthController.email.clear();
        AuthController.password.clear();
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: ((context) => Home())),
            (route) => false);
      }),
    );
  }
}
