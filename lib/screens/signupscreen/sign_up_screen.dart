import 'package:craftyfurniture/screens/SignInScreen/sign_in_screen.dart';
import 'package:craftyfurniture/screens/google/google_sign_up_button.dart';
import 'package:craftyfurniture/screens/shared_utils/button.dart';
import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:craftyfurniture/screens/shared_utils/input_field.dart';
import 'package:craftyfurniture/screens/shared_utils/primary_colour.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<SignUpScreen> {
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();

  bool passwordobscure = false;
  bool confirmpasswordobscure = false;

  @override
  void dispose() {
    _fullName.dispose();
    _email.dispose();
    _password.dispose();
    _confirmpassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: SafeArea(
        minimum: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Text.rich(
          TextSpan(
            text: 'Already have an account? ',
            style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 16,
            ),
            children: [
              TextSpan(
                text: ' Sign In',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.of(context).pop();
                  },
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: CraftsColor.primaryColor,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              30.vSpace,
              const Text(
                'Create Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              5.vSpace,
              const Text(
                'Let’s create account together',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
              50.vSpace,
              const Text(
                'Full Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              5.vSpace,
              InputField(
                textEditingController: _fullName,
                hint: 'Enter Your Name',
              ),
              20.vSpace,
              const Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              5.vSpace,
              InputField(
                textEditingController: _email,
                hint: 'Enter Your Email',
              ),
              20.vSpace,
              const Text(
                'Passsword',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              // 5.vSpace,
              InputField(
                textEditingController: _password,
                hint: '********',
                obscure: passwordobscure,
                suffixWidget: GestureDetector(
                  child: passwordobscure == true
                      ? const Icon(
                          Icons.visibility_off,
                          size: 30,
                        )
                      : const Icon(
                          Icons.visibility,
                          size: 30,
                        ),
                  onTap: () => setState(
                    () {
                      passwordobscure = !passwordobscure;
                    },
                  ),
                ),
              ),
              20.vSpace,
              const Text(
                'Confirm Passsword',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              // 5.vSpace,
              InputField(
                textEditingController: _confirmpassword,
                hint: '********',
                obscure: confirmpasswordobscure,
                suffixWidget: GestureDetector(
                  child: confirmpasswordobscure == true
                      ? const Icon(
                          Icons.visibility_off,
                          size: 30,
                        )
                      : const Icon(
                          Icons.visibility,
                          size: 30,
                        ),
                  onTap: () => setState(
                    () {
                      confirmpasswordobscure = !confirmpasswordobscure;
                    },
                  ),
                ),
              ),
              20.vSpace,
              Button(
                buttonName: 'Sign Up',
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => const Signinscreen()),
                  );
                },
              ),
              10.vSpace,
              GoogleSignUpButton(onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}
