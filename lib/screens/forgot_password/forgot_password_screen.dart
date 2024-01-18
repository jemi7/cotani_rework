import 'package:flutter/material.dart';

import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  static String routeName = "/forgot_password";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton (
          onPressed: () => Navigator.pop(context, ForgotPasswordScreen.routeName),
        ),
        title: Text("Forgot Password"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}