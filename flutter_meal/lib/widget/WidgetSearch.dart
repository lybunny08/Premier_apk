import 'package:flutter/material.dart';
import 'package:flutter_meal/Mediaquery.dart';
import '../details/product.dart';

class WidgetSearch extends StatelessWidget {
  final CustomSize _size = CustomSize();
  WidgetSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: _size.height(context) / 13,
        decoration: BoxDecoration(
            color: Color.fromARGB(49, 76, 76, 78),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.search,
                color: Colors.white54,
                size: 40,
              ),
              Container(
                  width: 200,
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search Grocery",
                          hintStyle: TextStyle(
                            color: Colors.white54,
                            fontSize: 20,
                          )),
                    ),
                  )),
              Icon(
                Icons.category,
                color: Colors.white54,
                size: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
