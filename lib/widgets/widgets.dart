import 'package:flutter/material.dart';

Widget customTextfeild({
  required Icon prefixIcon,
  required String hintText,
  suffixIcon,
  required String labelText,
  bool obsText = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
        ),
        child: Text(
          labelText,
          style: bodyText(),
        ),
      ),
      TextField(
        obscureText: obsText,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(36),
            ),
          ),
          fillColor: const Color(0xfff7f5f5),
          filled: true,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(36),
            ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(36),
            ),
          ),
          prefixIcon: prefixIcon,
          hintText: hintText,
          suffixIcon: suffixIcon,
        ),
      ),
    ],
  );
}

TextStyle bodyText({Color textcolor = Colors.black54}) {
  return TextStyle(
    color: textcolor,
    fontSize: 20,
    fontStyle: FontStyle.normal,
  );
}

ButtonStyle myElevatedButtonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.black87,
    padding: const EdgeInsets.symmetric(vertical: 15.0),
  );
}
