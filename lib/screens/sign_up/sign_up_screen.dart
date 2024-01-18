import 'package:flutter/material.dart';
import 'components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static String routeName = "/sign_up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton (
          onPressed: () => Navigator.pop(context, SignUpScreen.routeName),
        ),
        title: Text("Sign Up"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}