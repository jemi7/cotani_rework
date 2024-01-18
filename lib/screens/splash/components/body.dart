// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';

import '../../sign_in/sign_in_screen.dart';
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget> [
            Expanded(
              flex: 3,
              child: SplashContent(
                text: "Connect, Cultivate,\n       Contribute!",
                image: "assets/images/logo.png",
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: <Widget> [
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Let's Go",
                      press: () {
                        Navigator.popAndPushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

