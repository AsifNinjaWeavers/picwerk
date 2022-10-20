import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:picwerk/constant/all_text.dart';
import 'package:picwerk/views/allpages/profile/contact_us.dart';
import 'package:picwerk/views/allpages/profile/update_profile.dart';
import 'package:picwerk/views/dialouge/delete_dialouge.dart';
import 'package:picwerk/widget/elevetd_button_widget.dart';
import '../../constant/image.dart';
import '../../widget/listtile.dart';
import '../auth/sign_in.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, right: 25, top: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
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
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 5,
              thickness: 1,
              color: Color(0xff159575D),
            ),
            const SizedBox(
              height: 18,
            ),
            CustomListTile(
              ontap: () {},
              text: AllText.pastjobs,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 16, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 18,
            ),
            CustomListTile(
              ontap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const UpdateProfile()));
              },
              text: AllText.updateprofile,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 16, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 18,
            ),
            CustomListTile(
              ontap: () {},
              text: AllText.changepassword,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 16, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 18,
            ),
            CustomListTile(
              ontap: () {},
              text: AllText.reviews,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 16, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 18,
            ),
            CustomListTile(
              ontap: () {},
              text: AllText.payment,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 16, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              ontap: () {},
              text: AllText.faqs,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 16, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              ontap: () {},
              text: AllText.termsandcondition,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 16, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              ontap: () {},
              text: AllText.privacypolicy,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 16, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 18,
            ),
            CustomListTile(
              ontap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const ContactUs()));
              },
              text: AllText.contactus,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 16, color: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomListTile(
              ontap: () =>CustomDialouge.showDialog2(context),
              text: AllText.deleteaccount,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontSize: 16, color: const Color(0xff1594C76)),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevetdButtonWidgetCustom(
                widget: Text(AllText.signout),
                onpreesed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => const SignIn()),
                      (route) => false);
                })
          ],
        ),
      ),
    );
  }
}
