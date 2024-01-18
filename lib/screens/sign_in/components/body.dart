// ignore_for_file: unused_field

import 'package:cotani_rework/components/no_account_text.dart';
import 'package:cotani_rework/constants.dart';
import 'package:cotani_rework/screens/sign_in/components/sign_form.dart';
import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                Text(
                  "Welcome!",
                  style: headingStyle,
                ),
                Text(
                  "Log in with your e-mail and password",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                SignForm(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SocialCard(
                    //   icon: "assets/icons/icon_google.svg",
                    //   press: () {},
                    // ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

