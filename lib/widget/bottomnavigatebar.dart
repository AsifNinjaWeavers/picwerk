import 'package:flutter/material.dart';

import '../constant/all_text.dart';

class BottomNavigationBarHome extends StatefulWidget {
   BottomNavigationBarHome({
    required this.index,
    Key? key,
  }) : super(key: key);
  final Function(int) index;
  @override
  State<BottomNavigationBarHome> createState() =>
      _BottomNavigationBarHomeState();
}

class _BottomNavigationBarHomeState extends State<BottomNavigationBarHome> {
  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          currentIndex: selectindex,
          onTap: (value) {
            setState(() {
              selectindex = value;
              widget.index(selectindex);
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home,
                ),
                label: AllText.navbaritemhome),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.business_center,
                ),
                label: AllText.navbaritemmywork),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.chat_rounded,
                ),
                label: AllText.navbaritemchat),
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.person,
                ),
                label: AllText.navbaritemprofile)
          ],
        ),
      ),
    );
  }
}
