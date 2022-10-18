import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:picwerk/constant/all_text.dart';
import 'package:picwerk/views/sign_in.dart';
import 'package:picwerk/widget/elevetd_button_widget.dart';

import '../../constant/image.dart';
import '../../widget/listtile.dart';
import '../../widget/text_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30, top: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            leading: CircleAvatar(
              radius: 25, // Image radius
              backgroundImage: AssetImage(
                ImageConstant.profile,
              ),
            ),
            title: Text(
              'John Doe',
              style:
                  Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 18),
            ),
            subtitle: Text(
              'john1234@gmail.com',
              style:
                  Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            height: 5,
            thickness: 1,
            color: Color(0xff159575D),
          ),
          CustomListTile(
            text: AllText.pastjobs,
          ),
          CustomListTile(
            text: AllText.updateprofile,
          ),
          CustomListTile(
            text: AllText.changepassword,
          ),
          CustomListTile(
            text: AllText.reviews,
          ),
          CustomListTile(
            text: AllText.payment,
          ),
          CustomListTile(
            text: AllText.faqs,
          ),
          CustomListTile(
            text: AllText.termsandcondition,
          ),
          CustomListTile(
            text: AllText.privacypolicy,
          ),
          CustomListTile(
            text: AllText.contactus,
          ),
          TextButtonWidget(
            onpreesed: () {},
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(fontSize: 16, color: Color(0xff1594C76)),
            text: AllText.deleteaccount,
          ),
          Elevetd_Button_Widget(
              widget: Text(AllText.signout),
              onpreesed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => SignIn()),
                    (route) => false);
              })
        ],
      ),
    );
  }
}
