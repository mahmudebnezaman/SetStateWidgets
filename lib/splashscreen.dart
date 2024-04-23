import 'package:flutter/material.dart';
import 'package:landing_page_ui_setstate/loginpage.dart';
import 'package:landing_page_ui_setstate/signuppage.dart';
import 'package:landing_page_ui_setstate/utils/strings.dart';
import 'package:landing_page_ui_setstate/widgets/widgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.title});

  final String title;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36.0),
                bottomRight: Radius.circular(36.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Text(
                  firstText,
                  style: bodyLargeText(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        spreadRadius: 2,
                        offset: Offset(
                          0,
                          4,
                        ),
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(36.0),
                    ),
                  ),
                  child: Text(
                    secondText,
                    style:bodyHeaderText(),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/news.png',
            height: MediaQuery.of(context).size.height * 0.2,
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
                        builder: (context) => const Loginpage(),
                      ),
                    ),
                    child: Text(
                      logIn,
                      style: bodyLargeText(textcolor: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton(
                    onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const SignUpPage(),
                      ),
                    ),
                    child: Text(
                      signUp,
                      style: bodyLargeText(textcolor: Colors.black87),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
