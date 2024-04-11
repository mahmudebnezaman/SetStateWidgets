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
          style: bodyLargeText(),
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

TextStyle bodyLargeText({Color textcolor = Colors.black54, fontStyle = FontStyle.normal}) {
  return TextStyle(
    color: textcolor,
    fontSize: 18,
    fontStyle: fontStyle,
  );
}

TextStyle bodySmallText({Color textcolor = Colors.black54}) {
  return TextStyle(
    color: textcolor,
    fontSize: 12,
    fontStyle: FontStyle.normal,
  );

}TextStyle bodyText({Color textcolor = Colors.black54, fontStyle = FontStyle.normal, fontWeight = FontWeight.normal}) {
  return TextStyle(
    color: textcolor,
    fontSize: 14,
    fontStyle: fontStyle,
    fontWeight: fontWeight,
  );
}

TextStyle bodyHeaderText({Color textcolor = Colors.black}) {
  return TextStyle(
    color: textcolor,
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
}

ButtonStyle myElevatedButtonStyle() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.black87,
    padding: const EdgeInsets.symmetric(vertical: 15.0),
  );
}
