import 'package:flutter/material.dart';
import 'package:picwerk/constant/image.dart';
import 'package:picwerk/controller/authcontroller.dart';
import 'package:picwerk/utility/colors.dart';
import 'package:picwerk/views/auth/sign_in.dart';
import 'package:picwerk/views/home.dart';
import 'package:picwerk/views/terms_and_condition.dart';

import '../../constant/all_text.dart';
import '../../widget/custom_checkbox.dart';
import '../../widget/elevetd_button_widget.dart';
import '../../widget/input_formfield.dart';
import '../../widget/text_button.dart';
class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formkey = GlobalKey();

  bool accept = false;
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
                  TextInputField(
                    keyboardtype: TextInputType.name,
                    labeltext: null,
                    normalfield: true,
                    controller: AuthController.firstname,
                    hinttext: '${AllText.first} ${AllText.name}',
                    validator: AuthController.validateName,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextInputField(
                    keyboardtype: TextInputType.name,
                    labeltext: null,
                    normalfield: true,
                    controller: AuthController.lastname,
                    hinttext: '${AllText.last} ${AllText.name}',
                    validator: AuthController.validateName,
                  ),
                  const SizedBox(
                    height: 15,
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
                    height: 15,
                  ),
                  TextInputField(
                    keyboardtype: TextInputType.visiblePassword,
                    labeltext: null,
                    validator: AuthController.validatePass,
                    normalfield: false,
                    controller: AuthController.confirmpassword,
                    hinttext: '${AllText.confirm} ${AllText.Password}',
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Customcheckbox(
                        accept: (val) {
                          accept = val;
                        },
                      ),
                      Text(
                        AllText.iacceptthe,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: const Color(0xff858487)),
                      ),
                      TextButtonWidget(
                        onpreesed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const TermsAndCondition()));
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
                  ElevetdButtonWidgetCustom(
                    onpreesed: () async {
                      const snackBar = SnackBar(
                        content: Text('Accept trems'),
                      );
                      formkey.currentState!.validate()
                          ? accept
                              ? fn()
                              : ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar)
                          : null;
                    },
                    widget: _isLoading == true
                        ? const Center(
                            child:
                                CircularProgressIndicator(color: Colors.white),
                          )
                        : Text(
                            AllText.signup,
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
                        AllText.alreadyaccountdialouge,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontSize: 14,
                            ),
                      ),
                      TextButtonWidget(
                        onpreesed: () {
                          AuthController.email.clear();
                          AuthController.password.clear();
                          AuthController.firstname.clear();
                          AuthController.lastname.clear();
                          AuthController.confirmpassword.clear();
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: ((context) => const SignIn())),
                              (route) => false);
                        },
                        text: AllText.signin,
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
    await Future.delayed(const Duration(seconds: 5), (() {
      AuthController.email.clear();
      AuthController.password.clear();
      AuthController.firstname.clear();
      AuthController.lastname.clear();
      AuthController.confirmpassword.clear();
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: ((context) => Home())), (route) => false);
    }));
  }
}
