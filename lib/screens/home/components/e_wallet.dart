import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';

class eWallet extends StatelessWidget {
  const eWallet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          text: "Total Saldo\n",
          style: TextStyle(
            fontSize: 16,
          ),
          children: [
            TextSpan(
              text: "Rp100.000",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              )
            ),
          ],
        ),
      ),
    );
  }
}