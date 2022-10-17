import 'package:flutter/material.dart';
import 'package:picwerk/constant/all_text.dart';
import 'package:picwerk/constant/image.dart';
import 'package:picwerk/controller/authcontroller.dart';
import 'package:picwerk/views/reset_password.dart';
import 'package:picwerk/widget/elevetd_button_widget.dart';
import 'package:picwerk/widget/text_button.dart';
import '../widget/input_formfield.dart';
import '../utility/colors.dart';

class ForgetPssword extends StatefulWidget {
  ForgetPssword({super.key});

  @override
  State<ForgetPssword> createState() => _ForgetPsswordState();
}

class _ForgetPsswordState extends State<ForgetPssword> {
  bool link = false;
  bool _isLoading = false;

  GlobalKey<FormState> formkey = GlobalKey();

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
                  TextInputField(
                    validator: AuthController.validatePass,
                    normalfield: true,
                    controller: AuthController.email,
                    hinttext: '${AllText.email} ${AllText.address}',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Elevetd_Button_Widget(
                    widget: _isLoading == true
                        ? const Center(
                            child: CircularProgressIndicator(
                            color: Colors.white,
                          ))
                        : Text(
                            AllText.submit,
                            style: Theme.of(context)
                                .textTheme
                                .button!
                                .copyWith(fontSize: 16),
                          ),
                    onpreesed: () async {
                      formkey.currentState!.validate()
                          ? !link
                              ? fn()
                              : null
                          : null;
                    },
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  link == true
                      ? Row(
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
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                      fontSize: 14,
                                      decoration: TextDecoration.underline,
                                      decorationThickness: 2,
                                      color: const Color(0xff949398)),
                            ),
                          ],
                        )
                      : SizedBox(),
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
      setState(
        () {
          if (!link) {
            link = true;
          }
        },
      );
      AuthController.email.clear();
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => ResetPassword()),
          (route) => false);
    }));
  }
}
