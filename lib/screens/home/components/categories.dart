import 'package:cotani_rework/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/home/features_waste.svg", "text": "CT Waste"},
      {"icon": "assets/icons/home/features_store.svg", "text": "CT Store"},
      {"icon": "assets/icons/home/features_findjob.svg", "text": "CT Jobs"},
      {"icon": "assets/icons/home/features_maps.svg", "text": "CT Maps"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key, 
    required this.icon, 
    required this.text, 
    required this.press,
  });

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(55),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(15)),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: SvgPicture.asset(icon),
            )
          ),
          SizedBox(height: 5),
          Text(text, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}