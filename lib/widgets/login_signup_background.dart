import 'package:flutter/material.dart';
import 'package:landing_page_ui_setstate/utils/strings.dart';
import 'package:landing_page_ui_setstate/widgets/widgets.dart';

Widget loginSignupBackground({required BuildContext context, required String title}){

  return Column(
    children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: double.infinity,
        decoration: BoxDecoration(
          color: title == logIn ? Colors.greenAccent : Colors.lightBlueAccent,
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(36.0),
            bottomLeft: Radius.circular(36.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
             Text(
              title,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/google.png',
                    height: 40,
                  ),
                  Image.asset(
                    'assets/images/twitter.png',
                    height: 40,
                  ),
                  Image.asset(
                    'assets/images/facebook.png',
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Divider(),
            Container(
              width: 40,
              height: 20,
              color: Theme.of(context).colorScheme.background,
            ),
            Text(
              'or',
              style: bodyLargeText(),
              // textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ],
  );
}