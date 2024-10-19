import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:flutter/material.dart';

class Newuserpageone extends StatelessWidget {
  const Newuserpageone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: SingleChildScrollView(
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
                  'chair1'.toPNG(),
                  fit: BoxFit.cover,
                ),
              ),
              20.vSpace,
              const Text(
                'View And Experience \nFurniture With The Help \nOf Augmented Reality',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
