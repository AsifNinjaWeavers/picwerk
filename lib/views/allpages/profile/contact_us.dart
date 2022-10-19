import 'package:flutter/material.dart';
import 'package:picwerk/controller/contact_us_controller.dart';
import 'package:picwerk/widget/elevetd_button_widget.dart';
import '../../../constant/all_text.dart';
import '../../../utility/colors.dart';
import '../../../widget/input_formfield.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AllColor.backgroundcolor,
        title: Text(AllText.contactus,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontSize: 30, color: Color(0xff1FFFFFF))),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 15,
          ),
        ),
      ),
      backgroundColor: AllColor.backgroundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AllText.contactusdialouge,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontSize: 12),
              ),
              const SizedBox(
                height: 26,
              ),

              TextInputField(
                controller: ContactUsController.subjectcontroller,
                hinttext: AllText.subject,
                keyboardtype: TextInputType.text,
                labeltext: AllText.subject,
                normalfield: true,
                validator: null,
              ),
              const SizedBox(
                height: 26,
              ),
              SizedBox(
                height: 200,
                child: TextInputField(
                  multiline: true,
                  controller: ContactUsController.messagecontroller,
                  hinttext: AllText.message,
                  keyboardtype: TextInputType.multiline,
                  labeltext: AllText.messages,
                  normalfield: true,
                  validator: null,
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              ElevetdButtonWidgetCustom(
                widget: Text(AllText.sendmessage),
                onpreesed: () {},
                color: Color(0xff1C5ABFF),
              )
              // const SizedBox(
            ],
          ),
        ),
      ),
    );
  }
}
