import 'package:craftyfurniture/screens/newUserScreens/views/new_user_page_one.dart';
import 'package:craftyfurniture/screens/newUserScreens/views/new_user_page_three.dart';
import 'package:craftyfurniture/screens/newUserScreens/views/new_user_page_two.dart';
import 'package:craftyfurniture/screens/shared_utils/primary_colour.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ScreenNavigator extends StatefulWidget {
  const ScreenNavigator({super.key});

  @override
  State<ScreenNavigator> createState() => _ScreenNavigatorState();
}

class _ScreenNavigatorState extends State<ScreenNavigator> {
  final PageController _pagecontroller = PageController();
  int currentIndex = 0;

  final icons = <Widget>[
    Icon(EvaIcons.home, size: 30),
    Icon(EvaIcons.shoppingCart, size: 30),
    Icon(EvaIcons.shoppingBag, size: 30),
    Icon(EvaIcons.settings, size: 30),
    Icon(EvaIcons.person, size: 30),
  ];

  @override
  void dispose() {
    _pagecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screenPages = <Widget>[
      Newuserpageone(),
      Newuserpagetwo(),
      Newuserpagethree(),
    ];

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(items: icons),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pagecontroller,
              onPageChanged: (value) => setState(
                () {
                  currentIndex = value;
                },
              ),
              children: screenPages,
            ),
          ),
        ],
      ),
    );
  }
}
