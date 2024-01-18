import 'package:cotani_rework/screens/home/components/body.dart';
import 'package:cotani_rework/screens/home/components/icon_btn_with_counter.dart';
import 'package:cotani_rework/screens/home/components/search_field.dart';
import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/home/icons/Bell.svg",
            numOfItems: 3,
            press: () {},
          ),
        ]
      ),
    );
  }
}