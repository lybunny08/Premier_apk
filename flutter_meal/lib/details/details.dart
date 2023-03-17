import 'package:flutter/material.dart';
import 'package:flutter_meal/Mediaquery.dart';
import 'package:flutter_meal/details/container.dart';
import 'package:flutter_meal/details/product.dart';

class DetailsScren extends StatelessWidget {
  final CustomSize _size = CustomSize();
  final Product product;
  DetailsScren({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Container(
            height: _size.height(context),
            width: _size.width(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                appbar(),
                Image.asset(
                  product.image,
                  width: _size.width(context),
                  height: 355,
                  fit: BoxFit.cover,
                ),
                Body(product: product),
                SizedBox(
                  width: _size.width(context),
                  height: _size.height(context) / 8.31,
                  child: Container(
                    color: Color.fromARGB(45, 96, 96, 102),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Price",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white54),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  "\Ar ${product.price} /piece",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                              width: _size.width(context) / 2.5,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(44, 169, 169, 202),
                              ),
                              child: SizedBox(
                                child: Center(
                                    child: Text(
                                  "Add to cart",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class appbar extends StatefulWidget {
  const appbar({
    Key? key,
  }) : super(key: key);

  @override
  _appbarState createState() => _appbarState();
}

class _appbarState extends State<appbar> {
  bool _isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white30),
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(49, 76, 76, 78),
                  ),
                  child: Center(
                    child: Image.asset(
                      "images/left-chevron.png",
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isFavorite = !_isFavorite;
                  });
                },
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white30),
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(49, 76, 76, 78),
                  ),
                  child: Center(
                    child: Icon(
                      _isFavorite ? Icons.favorite : Icons.favorite_border,
                      size: 40,
                      color: _isFavorite ? Colors.red : Colors.white54,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
