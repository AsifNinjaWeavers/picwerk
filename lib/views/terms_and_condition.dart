import 'package:flutter/material.dart';
import 'package:picwerk/constant/all_text.dart';
import 'package:picwerk/utility/colors.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
          ),
        ),
        backgroundColor: AllColor.backgroundcolor,
        title: Text(
          AllText.termsandcondition,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontSize: 30, color: const Color(0xff1FFFFFF)),
        ),
      ),
      backgroundColor: AllColor.backgroundcolor,
    );
  }
}
