import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_meal/widget/ItemCard.dart';
import 'package:flutter_meal/Mediaquery.dart';
import 'package:flutter_meal/widget/Promotion.dart';
import 'package:flutter_meal/widget/WidgetSearch.dart';
import 'package:flutter_meal/widget/category.dart';
import 'package:flutter_meal/details/details.dart';
import 'package:flutter_meal/details/product.dart';
import 'package:flutter_meal/widget/navbar.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  final CustomSize _size = CustomSize();
  bool isFavorite = false;

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          height: _size.height(context),
          width: _size.width(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white54,
                              ),
                            ),
                            Text(
                              "Mamitiana Lydien",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(27),
                          child: Image.asset(
                            "images/mami.jpg",
                            width: 60,
                            height: 60,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: _size.height(context) / 120,
                ),
                WidgetSearch(),
                SizedBox(
                  height: _size.height(context) / 27,
                ),
                Categories(), //les differentes catégories qui existe dans l'apk 
                SizedBox(
                  height: _size.height(context) / 25,
                ),
                Promotion(), // Widget du promotion
                SizedBox(
                  height: _size.height(context) / 25,
                ),
                Expanded(
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.80,
                        ),
                        itemCount: products.length,
                        itemBuilder: (context, index) => ItemCard(
                            product: products[index],
                            press: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailsScren(
                                        product: products[index])))))), // les cartes des produit
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomNavBar(),
      ),
    );
  }
}
