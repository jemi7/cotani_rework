import 'package:cotani_rework/constants.dart';
import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, 
    required this.text, 
    required this.image,
  });

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Spacer(),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(24),
            color: kTextColor,
            fontWeight: FontWeight.bold,
          )
        ),
      ],
    );
  }
}