import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromARGB(255, 75, 187, 23);
const kSecondaryColor = Color.fromARGB(255, 24, 154, 70);
const kTextColor = Color.fromARGB(255, 37, 158, 116);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: kSecondaryColor,
  height: 1.5,
);

// Error msg
final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9.]+\.[a-zA-Z]");
const String kEmailNullError = "Please enter your e-mail";
const String kInvalidEmailError = "Please enter a valid e-mail";
const String kPassNullError = "Please enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = "Please enter your name";