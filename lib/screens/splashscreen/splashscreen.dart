import 'package:craftyfurniture/screens/newUserScreens/new_user_creen_view.dart';
import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:craftyfurniture/screens/shared_utils/primary_colour.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const NewuserscreenView();
      }));
    });

    return Scaffold(
      backgroundColor: CraftsColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'Crafty Furniture'.toPNG(),
              scale: 2.8,
            ),
            10.vSpace,
            const Text(
              'Crafty Furniture',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
