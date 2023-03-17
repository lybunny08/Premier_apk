import 'package:flutter/material.dart';
import 'package:flutter_meal/Mediaquery.dart';
import 'package:flutter_meal/details/product.dart';
import 'package:flutter_meal/details/productDescription.dart';
import 'package:flutter_meal/details/rate.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final CustomSize _size = CustomSize();
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: Stack(children: [
              Container(
                margin: EdgeInsets.only(top: _size.height(context) * 0),
                height: 300,
                width: _size.width(context),
                decoration: BoxDecoration(color: Colors.black),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        product.num,
                        style: TextStyle(fontSize: 25, color: Colors.white54),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: SizedBox(
                          width: _size.width(context),
                          child: rate(
                              rateStar: product.rate,
                              width: 5,
                              iconSize: 30,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: ProductDescription(
                          description: product.description,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
