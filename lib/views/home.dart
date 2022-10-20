import 'package:flutter/material.dart';

import 'package:picwerk/views/allappbar/chat_appbar.dart';
import 'package:picwerk/views/allappbar/home_appbar.dart';
import 'package:picwerk/views/allappbar/mywork_appbar.dart';
import 'package:picwerk/views/allappbar/profile_appbar.dart';
import 'package:picwerk/widget/bottomnavigatebar.dart';
import '../utility/colors.dart';
import 'allpages/chat_page.dart';
import 'allpages/home_page.dart';
import 'allpages/mywork_page.dart';
import 'allpages/profile_page.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  final List<Widget> _pages = const [HomePage(), MyWork(), Chat(), Profile()];
  final List _appbar = const [
    HomePageBar(),
    MyWorkAppBar(),
    ChatAppBar(),
    ProfileAppBar()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60), child: _appbar[index]),
      backgroundColor: AllColor.backgroundcolor,
      body: _pages[index],
     
      bottomNavigationBar: BottomNavigationBarHome(
        index: (val) {
          setState(() {
            index = val;
          });
        },
      ),
    );
  }
}
