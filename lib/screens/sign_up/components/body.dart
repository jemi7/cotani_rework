import 'package:cotani_rework/constants.dart';
import 'package:cotani_rework/screens/sign_up/components/sign_up_form.dart';
import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Please fill in your details",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.07),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.07),
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
              Text(
                "By continuing, you confirm that you agree \nwith our Terms and Conditions",
                textAlign: TextAlign.center,
              )
            ]
          ),
        ),
      ),
    );
  }
}