import 'package:craftyfurniture/screens/homescreen/views/most_interested_view.dart';
import 'package:craftyfurniture/screens/homescreen/views/popular_view.dart';
import 'package:craftyfurniture/screens/homescreen/views/special_offer_view.dart';
import 'package:craftyfurniture/screens/shared_utils/bottomnavs.dart';
import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:craftyfurniture/screens/shared_utils/input_field.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final TextEditingController _searchController = TextEditingController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        items: [
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: const Icon(
                          Icons.person,
                          size: 50,
                        ),
                      ),
                      10.hSpace,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome,',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          5.vSpace,
                          const Text(
                            'Besnik Doe',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.notifications_on_sharp,
                          size: 40,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  30.vSpace,
                  InputField(
                    textEditingController: _searchController,
                    hint: 'Search Furniture',
                    prefixWidget: const Icon(
                      EvaIcons.search,
                      size: 30,
                    ),
                    suffixWidget: const Icon(
                      EvaIcons.options2,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SpecialOfferView(),
            30.vSpace,
            const MostInterestedView(),
            30.vSpace,
            const PopularView(),
            // SnakeNavigationBar.color()
          ],
        ),
      ),
    );
  }
}
