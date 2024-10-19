import 'package:craftyfurniture/screens/shared_utils/primary_colour.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonName;
  final VoidCallback onTap;
  const Button({
    super.key,
    required this.buttonName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: CraftsColor.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
