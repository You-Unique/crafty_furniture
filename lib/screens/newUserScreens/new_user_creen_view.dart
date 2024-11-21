import 'package:craftyfurniture/screens/SignInScreen/sign_in_screen.dart';
import 'package:craftyfurniture/screens/newUserScreens/views/new_user_page_one.dart';
import 'package:craftyfurniture/screens/newUserScreens/views/new_user_page_three.dart';
import 'package:craftyfurniture/screens/newUserScreens/views/new_user_page_two.dart';
import 'package:craftyfurniture/screens/shared_utils/button.dart';
import 'package:craftyfurniture/screens/shared_utils/primary_colour.dart';
import 'package:flutter/material.dart';

class NewuserscreenView extends StatefulWidget {
  const NewuserscreenView({super.key});

  @override
  State<NewuserscreenView> createState() => _NewuserscreenViewState();
}

class _NewuserscreenViewState extends State<NewuserscreenView> {
  final PageController _pageController = PageController();

  int currentIndex = 0;

  void nextPage() {
    if (currentIndex < 2) {
      // Move to the next page in the PageView
      _pageController.nextPage(
        duration: const Duration(
            milliseconds: 300), // Duration of the page transition
        curve: Curves.easeInOut, // for the pages transitioning
      );
    } else {
      // this check if its on the last page and remove all the remaining screen
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Newuserpagethree()),
        ModalRoute.withName('/'),
      );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
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
      backgroundColor: Colors.white,
      bottomNavigationBar: currentIndex == 2
          ? SafeArea(
              minimum: const EdgeInsets.only(bottom: 20, left: 30, right: 30),
              child: Button(
                  buttonName: 'Get Started',
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const Signinscreen(),
                      ),
                    );
                  }),
            )
          : Padding(
              padding: const EdgeInsets.only(
                bottom: 40,
                left: 30,
                right: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    onTap: () => setState(() {
                      currentIndex = 2;
                    }),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: CraftsColor.primaryColor,
                    ),
                    child: GestureDetector(
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onTap: () {
                        nextPage();
                      },
                    ),
                  ),
                ],
              ),
            ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (value) => setState(
                  () {
                    currentIndex = value;
                  },
                ),
                children: screenPages,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  screenPages.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 10),
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
            )
          ],
        ),
      ),
    );
  }
}
