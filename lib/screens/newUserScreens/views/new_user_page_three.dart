import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:flutter/material.dart';

class Newuserpagethree extends StatelessWidget {
  const Newuserpagethree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                'chair3'.toPNG(),
                fit: BoxFit.cover,
              ),
            ),
            20.vSpace,
            const Text(
              'Explore World Class Top \nFurnitures As Per Your \nRequirements & Choice',
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
