import 'package:flutter/material.dart';
import 'package:landing_page_ui_setstate/homescreen.dart';
import 'package:landing_page_ui_setstate/signuppage.dart';
import 'package:landing_page_ui_setstate/utils/strings.dart';
import 'package:landing_page_ui_setstate/widgets/login_signup_background.dart';
import 'package:landing_page_ui_setstate/widgets/widgets.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool isPass = true;

  void togglePasswordView() {
    setState(() {
      isPass = !isPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              loginSignupBackground(context: context, title: logIn),

              const Spacer(),

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
                            splashColor: Colors.transparent,
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
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16.0,
                          ),
                          child: Text(
                            'Must be 8 or more characters.',
                            style: bodyText(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const Spacer(),

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
                          'Log In',
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
                          'Don\'t have an account',
                          style: bodyLargeText(textcolor: Colors.black87),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ),
                          ),
                          child: Text(
                            'Sign Up',
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
      ),
    );
  }
}
