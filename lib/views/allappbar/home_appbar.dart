import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constant/all_text.dart';
import '../../utility/colors.dart';
import '../../widget/switch.dart';
import '../allpages/notification.dart';

class HomePageBar extends StatelessWidget {
 
  const HomePageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AllColor.backgroundcolor,
      title: Text('Hi! Jane',
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontSize: 30, color: Color(0xff1FFFFFF))),
      titleSpacing: 30,
      elevation: 0,
      automaticallyImplyLeading: false,
      actions: [
        Center(
            child: Text(
          AllText.client,
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(fontSize: 12, color: Color(0xff1594C76)),
        )),
        const SwitchButton(),
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
                onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder:(context) => Notifications()),),
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
