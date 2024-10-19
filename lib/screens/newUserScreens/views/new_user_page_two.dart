import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:flutter/material.dart';

class Newuserpagetwo extends StatelessWidget {
  const Newuserpagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 450,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'chair2'.toPNG(),
                fit: BoxFit.cover,
              ),
            ),
            20.vSpace,
            const Text(
              'Design Your Space With \nAugmented Reality By \nCreating Room',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
