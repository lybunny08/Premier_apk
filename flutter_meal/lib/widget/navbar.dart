import 'package:flutter/material.dart';
import '../Mediaquery.dart';

class CustomNavBar extends StatefulWidget {
  CustomNavBar({Key? key}) : super(key: key);

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  final CustomSize _size = CustomSize();
  int _selectedIndex = 0; // état initial pour l'icône "maison"

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _size.height(context) / 19,
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                size: 35,
                color: _selectedIndex == 0 ? Colors.white : Colors.white54,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                size: 35,
                color: _selectedIndex == 1 ? Colors.white : Colors.white54,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.favorite,
                size: 35,
                color: _selectedIndex == 2 ? Colors.white : Colors.white54,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.settings,
                size: 35,
                color: _selectedIndex == 3 ? Colors.white : Colors.white54,
              ),
              onPressed: () {
                setState(() {
                  _selectedIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
