import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:picwerk/constant/all_text.dart';

import '../../utility/colors.dart';
import '../allpages/notification.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AllColor.backgroundcolor,
      title: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: Column(
          // alignment: Alignment.topLeft,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              '${AllText.hi} John',
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 14,
                  ),
            ),
            Text('Good Morning!',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(fontSize: 30, color: Color(0xff1FFFFFF))),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      titleSpacing: 30,
      elevation: 0,
      automaticallyImplyLeading: false,
      actions: [
        Container(
          height: 30,
          padding: const EdgeInsets.only(
            top: 3,
            right: 15,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              IconButton(
                onPressed: () =>Navigator.of(context).push(MaterialPageRoute(builder:(context) => Notifications()),),
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.white,
                  size: 26,
                ),
              ),
              Container(
                width: 10,
                height: 10,
                // alignment: Alignment.topLeft,
                margin: const EdgeInsets.only(top: 12, right: 14),
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffc32c37),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
