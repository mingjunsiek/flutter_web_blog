import 'package:flutter/material.dart';
import 'package:flutter_blog/screens/home/components/sidebar_container.dart';

import '../../../constants.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryButton(
            title: "Artificial Intelligence",
            numOfItems: 3,
            press: () {},
          ),
          CategoryButton(
            title: "Augmented Realiity",
            numOfItems: 4,
            press: () {},
          ),
          CategoryButton(
            title: "Development",
            numOfItems: 10,
            press: () {},
          ),
          CategoryButton(
            title: "Flutter UI",
            numOfItems: 18,
            press: () {},
          ),
          CategoryButton(
            title: "Technology",
            numOfItems: 12,
            press: () {},
          ),
          CategoryButton(
            title: "UI/UX Design",
            numOfItems: 8,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;

  const CategoryButton({
    Key key,
    @required this.title,
    @required this.numOfItems,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: press,
        child: Text.rich(
          TextSpan(
            text: title,
            style: TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                text: " ($numOfItems)",
                style: TextStyle(color: kBodyTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
