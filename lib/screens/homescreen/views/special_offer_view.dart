import 'package:craftyfurniture/screens/SignInScreen/sign_in_screen.dart';
import 'package:craftyfurniture/screens/newUserScreens/views/new_user_page_one.dart';
import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:craftyfurniture/screens/shared_utils/primary_colour.dart';
import 'package:craftyfurniture/screens/signupscreen/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SpecialOfferView extends StatefulWidget {
  const SpecialOfferView({super.key});

  @override
  State<SpecialOfferView> createState() => _SpecialOfferViewState();
}

class _SpecialOfferViewState extends State<SpecialOfferView> {
//   final ScrollController _scrollController = ScrollController();

  int currentIndex = 0;

  List<String> images = [
    'contimage',
    'dining set',
    'Discount Card',
  ];

  List<String> discounts = [
    '25% discount',
    '35% discount',
    '50% discount',
  ];

  List<String> descriptions = [
    'For living chair set!',
    'For dining set!',
    'For a cozy yellow set!',
  ];

  List<String> actiontexts = [
    'Shop Now',
    'Buy Now',
    'Learn More',
  ];

  void screenNavigators(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => SignUpScreen(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Signinscreen(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Newuserpageone(),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Special Offers',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          20.vSpace,
          SingleChildScrollView(
            // controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                images.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SpecialViewCard(
                    imagePath: images[index],
                    discount: discounts[index],
                    onTap: () => screenNavigators(context, index),
                    description: descriptions[index],
                    actiontext: actiontexts[index],
                  ),
                ),
              ),
            ),
          ),
          5.vSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              images.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == index
                          ? CraftsColor.primaryColor
                          : Colors.grey),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SpecialViewCard extends StatelessWidget {
  final String imagePath;
  final String discount;
  final String description;
  final String actiontext;
  final VoidCallback onTap;

  const SpecialViewCard(
      {required this.imagePath,
      required this.discount,
      required this.onTap,
      required this.description,
      required this.actiontext,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 265,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset(
            imagePath.toPNG(),
          ),
        ),
        Positioned(
          left: 20,
          top: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                discount,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              15.vSpace,
              Container(
                width: 92,
                height: 34,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: CraftsColor.primaryColor,
                ),
                child: Center(
                  child: Text(
                    actiontext,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
