import 'package:flutter/material.dart';
import 'package:landing_page_ui_setstate/homescreen.dart';
import 'package:landing_page_ui_setstate/widgets/login_signup_background.dart';
import 'package:landing_page_ui_setstate/widgets/widgets.dart';

import 'loginpage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool isPass = true;

  void togglePasswordView() {
    setState(() {
      isPass = !isPass;
    });
  }

  bool isPass2 = true;

  void togglePasswordView2() {
    setState(() {
      isPass2 = !isPass2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            loginSignupBackground(context: context, title: 'Sign Up'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      customTextfeild(
                        hintText: 'example@mail.com',
                        prefixIcon: const Icon(Icons.email_outlined),
                        labelText: 'Email',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      customTextfeild(
                        suffixIcon: InkWell(
                          onTap: togglePasswordView,
                          child: Icon(
                            isPass ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                        obsText: isPass,
                        hintText: '********',
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        labelText: 'Password',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      customTextfeild(
                        suffixIcon: InkWell(
                          onTap: togglePasswordView2,
                          child: Icon(
                            isPass2 ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                        obsText: isPass2,
                        hintText: '********',
                        prefixIcon: const Icon(Icons.lock_outline_rounded),
                        labelText: 'Retype Password',
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Text(
                          'Must be 8 or more characters.',
                          style: bodyLargeText(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      style: myElevatedButtonStyle(),
                      onPressed: () => Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      ),
                      child: Text(
                        'SignUp',
                        style: bodyLargeText(textcolor: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account',
                        style: bodyLargeText(textcolor: Colors.black87),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const Loginpage(),
                          ),
                        ),
                        child: Text(
                          'Log In',
                          style: bodyLargeText(textcolor: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
