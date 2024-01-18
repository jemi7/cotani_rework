import 'package:cotani_rework/screens/home/components/categories.dart';
import 'package:cotani_rework/screens/home/components/e_wallet.dart';
import 'package:cotani_rework/screens/home/components/home_header.dart';
import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(20)),
            eWallet(),
            SizedBox(height: getProportionateScreenWidth(20)),
            Categories(),
          ]
        )
      )
    );
  }
}