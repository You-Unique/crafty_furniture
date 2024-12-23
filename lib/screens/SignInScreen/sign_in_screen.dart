import 'package:craftyfurniture/screens/google/google_sign_in_button.dart';
import 'package:craftyfurniture/screens/homescreen/homescreen.dart';
import 'package:craftyfurniture/screens/screen_navigator/screen_navigator.dart';
import 'package:craftyfurniture/screens/shared_utils/button.dart';
import 'package:craftyfurniture/screens/shared_utils/extension.dart';
import 'package:craftyfurniture/screens/shared_utils/input_field.dart';
import 'package:craftyfurniture/screens/shared_utils/primary_colour.dart';
import 'package:craftyfurniture/screens/signupscreen/sign_up_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signinscreen extends StatefulWidget {
  const Signinscreen({super.key});

  @override
  State<Signinscreen> createState() => _SigninscreenState();
}

class _SigninscreenState extends State<Signinscreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  Color? _containerColor;

  bool obscure = false;
  bool enableButton = true;

  void isUpdated() {
    setState(() {
      enableButton = _email.text.isEmpty && _password.text.isEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    _email.addListener(isUpdated);
    _password.addListener(isUpdated);
  }

  @override
  void dispose() {
    _email.removeListener(isUpdated);
    _password.removeListener(isUpdated);
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  void rememberMeColour() {
    setState(() {
      _containerColor =
          _containerColor == null ? CraftsColor.primaryColor : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Column(
                      children: [
                        Image.asset(
                          'Crafty Furniture'.toPNG(),
                          color: CraftsColor.primaryColor,
                          height: 100,
                        ),
                        const Text(
                          'Crafty Furniture',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: CraftsColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  20.vSpace,
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  5.vSpace,
                  const Text(
                    'Welcome Back! Please Enter Your Details.',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                  50.vSpace,
                  // Row(
                  //   children: [
                  //     Container(
                  //       width: 200,
                  //       height: 30,
                  //       color: Colors.black,
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.center,
                  //         children: [
                  //           const Text(
                  //             'Email',
                  //             style: TextStyle(
                  //                 fontWeight: FontWeight.w600,
                  //                 fontSize: 16,
                  //                 color: Colors.white),
                  //           ),
                  //           10.hSpace,
                  //           const Text(
                  //             'Phone Number',
                  //             style: TextStyle(
                  //                 fontWeight: FontWeight.w600,
                  //                 fontSize: 16,
                  //                 color: Colors.white),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // 30.vSpace,
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
                    obscure: obscure,
                    suffixWidget: GestureDetector(
                      child: obscure == true
                          ? Icon(
                              Icons.visibility_off,
                              size: 30,
                            )
                          : Icon(
                              Icons.visibility,
                              size: 30,
                            ),
                      onTap: () => setState(() {
                        obscure = !obscure;
                      }),
                    ),
                  ),
                  10.vSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: _containerColor != null
                                ? null
                                : Border.all(
                                    color: Colors.black,
                                  ),
                            color: _containerColor,
                          ),
                          child: _containerColor == null
                              ? null
                              : const Center(
                                  child: Icon(
                                    Icons.check,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                        onTap: () {
                          rememberMeColour();
                        },
                      ),
                      10.hSpace,
                      const Text(
                        'Remeber Me',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: CraftsColor.primaryColor,
                          ),
                        ),
                        onTap: () {
                          // Navigator.of(context).push(
                          //   MaterialPageRoute(
                          //     builder: (context) => const DraggableCircle(),
                          //   ),
                          // );
                        },
                      ),
                    ],
                  ),
                  20.vSpace,
                  Opacity(
                    opacity: enableButton ? 0.4 : 1,
                    child: Button(
                      buttonName: 'Sign In',
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const ScreenNavigator(),
                          ),
                        );
                      },
                    ),
                  ),
                  20.vSpace,
                  GoogleSignInButton(
                    onTap: () {},
                  ),
                  20.vSpace,
                  Center(
                    child: Text.rich(
                      TextSpan(
                        text: 'Don’t have an account? ',
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: ' Sign Up',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => const SignUpScreen(),
                                  ),
                                );
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
