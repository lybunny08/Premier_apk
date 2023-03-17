import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "Fruits", "Vegetables", "Bakery", "Meat"];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Text(
              categories[index],
              style: TextStyle(
                color: selectedIndex == index ? Colors.white : Colors.white54,
                fontSize: 23,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 10,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: selectedIndex == index ? Colors.white : Colors.transparent,
            ),
          )
        ],
      ),
    );
  }
}
