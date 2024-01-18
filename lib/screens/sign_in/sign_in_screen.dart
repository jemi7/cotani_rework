// ignore_for_file: prefer_const_constructors

import 'package:cotani_rework/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}