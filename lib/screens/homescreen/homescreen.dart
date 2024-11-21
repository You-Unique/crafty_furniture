import 'package:craftyfurniture/screens/homescreen/views/most_interested_view.dart';
import 'package:craftyfurniture/screens/homescreen/views/popular_view.dart';
import 'package:craftyfurniture/screens/homescreen/views/special_offer_view.dart';
import 'package:craftyfurniture/screens/homescreen/views/top_bar_view.dart';
import 'package:craftyfurniture/screens/shared_utils/draggable_circle.dart';
import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:craftyfurniture/screens/shared_utils/primary_colour.dart';
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
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 60),
                    child: Column(
                      children: [
                        const TopBarView(),
                        10.vSpace,
                        const SpecialOfferView(),
                        30.vSpace,
                        const MostInterestedView(),
                        10.vSpace,
                        const PopularView(),
                        40.vSpace,
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: DraggableCircle(
              height: 80,
              width: 80,
              color: CraftsColor.primaryColor,
              child: Icon(
                Icons.support_agent,
                size: 50,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
