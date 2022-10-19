// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:picwerk/constant/image.dart';
import 'package:picwerk/utility/colors.dart';
import 'package:picwerk/views/auth/sign_in.dart';
import '../../constant/all_text.dart';
import '../../controller/authcontroller.dart';
import '../../widget/elevetd_button_widget.dart';
import '../../widget/input_formfield.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController password = TextEditingController();

  TextEditingController confirmpassword = TextEditingController();

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
                  TextInputField(
                    keyboardtype: TextInputType.visiblePassword,
                    labeltext: null,
                    validator: AuthController.validatePass,
                    normalfield: false,
                    controller: AuthController.password,
                    hinttext: "${AllText.New} ${AllText.password}",
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
                    hinttext: "${AllText.confirm} ${AllText.password}",
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevetdButtonWidgetCustom(
                    widget: _isLoading == true
                        ? const Center(
                            child:
                                CircularProgressIndicator(color: Colors.white),
                          )
                        : Text(
                            AllText.reset,
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(fontSize: 16),
                          ),
                    onpreesed: () => fn(),
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
      AuthController.password.clear();
      AuthController.confirmpassword.clear();
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: ((context) => const SignIn())),
          (route) => false);
    }));
  }
}
