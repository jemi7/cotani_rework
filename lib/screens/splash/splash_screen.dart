import 'package:flutter/material.dart';
import 'package:cotani_rework/size_config.dart';
import 'package:cotani_rework/screens/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}