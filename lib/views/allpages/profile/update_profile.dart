import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:picwerk/constant/all_text.dart';
import 'package:picwerk/controller/update_profile_controller.dart';
import 'package:picwerk/widget/input_formfield.dart';

import '../../../constant/image.dart';
import '../../../utility/colors.dart';
import '../../../widget/elevetd_button_widget.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AllColor.backgroundcolor,
        title: Text(AllText.updatedprofile,
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
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Stack(alignment: Alignment.bottomRight, children: [
                CircleAvatar(
                  radius: 56, // Image radius
                  backgroundImage: AssetImage(
                    ImageConstant.profile,
                  ),
                ),
                Container(
                  height: 37,
                  width: 37,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff19A8ABF)),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo_camera,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                ),
              ]),
              const SizedBox(
                height: 26,
              ),
              TextInputField(
                validator: null,
                controller: UpdateProfileController.name,
                hinttext: null,
                normalfield: true,
                keyboardtype: TextInputType.name,
                labeltext: AllText.fullname,
              ),
              const SizedBox(
                height: 26,
              ),
              TextInputField(
                  keyboardtype: TextInputType.number,
                  labeltext: AllText.phone,
                  validator: null,
                  controller: UpdateProfileController.phone,
                  hinttext: null,
                  normalfield: true),
              const SizedBox(
                height: 26,
              ),
              TextInputField(
                  keyboardtype: TextInputType.emailAddress,
                  labeltext: AllText.email,
                  validator: null,
                  controller: UpdateProfileController.email,
                  hinttext: null,
                  normalfield: true),
              const SizedBox(
                height: 26,
              ),
              TextInputField(
                  keyboardtype: TextInputType.visiblePassword,
                  labeltext: AllText.password,
                  validator: null,
                  controller: UpdateProfileController.password,
                  hinttext: null,
                  normalfield: false),
              const SizedBox(
                height: 26,
              ),
              ElevetdButtonWidgetCustom(
                onpreesed: () {},
                widget: Text(AllText.updateprofile),
              )
            ],
          ),
        ),
      ),
    );
  }
}
