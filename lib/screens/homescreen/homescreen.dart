import 'package:craftyfurniture/screens/homescreen/views/most_interested_view.dart';
import 'package:craftyfurniture/screens/homescreen/views/popular_view.dart';
import 'package:craftyfurniture/screens/homescreen/views/special_offer_view.dart';
import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:craftyfurniture/screens/shared_utils/input_field.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentIndex = 0;

  List<String> screenImages = [
    'contimage'.toPNG(),
    'Sofa'.toPNG(),
    'Discount Card'.toPNG(),
    'handshake'.toPNG(),
    'younique'.toPNG(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(EvaIcons.home, size: 30),
      Icon(EvaIcons.search, size: 30),
      Icon(EvaIcons.settings, size: 30),
      Icon(EvaIcons.person, size: 30),
      Icon(EvaIcons.shoppingBag, size: 30),
    ];

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 400),
        buttonBackgroundColor: Colors.white,
        index: currentIndex,
        height: 70,
        backgroundColor: Colors.transparent,
        color: Colors.cyan,
        items: items,
        onTap: (currentIndex) {
          setState(() {
            this.currentIndex = currentIndex;
          });
        },
      ),
      backgroundColor: Colors.orange,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Center(
                  child: Image.asset(
                screenImages[currentIndex],
                height: 1000,
              )),
            )
          ],
        ),
      ),
    );
  }
}
