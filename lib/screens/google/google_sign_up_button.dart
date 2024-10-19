import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:flutter/material.dart';

class GoogleSignUpButton extends StatelessWidget {
  final VoidCallback onTap;
  const GoogleSignUpButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'Google'.toPNG(),
                width: 24,
                height: 24,
              ),
              10.hSpace,
              const Text(
                'Sign up With Google',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
