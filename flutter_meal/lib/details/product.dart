import 'package:flutter/material.dart';

class Product {
  final String image, title, description, category, num, text;
  final int price, id, rate;
  Product(
      {required this.id,
      required this.description,
      required this.image,
      required this.price,
      required this.title,
      required this.category,
      required this.num,
      required this.rate,
      required this.text});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Tomato",
      price: 100,
      description:
          "Tomato, (Solanum lycopersicum), flowering plant of the nightshade family (Solanaceae), cultivated extensively for its edible fruits. Labelled as a vegetable for nutritional purposes, tomatoes are a good source of vitamin C and the phytochemical lycopene",
      image: "images/tomate.jpeg",
      category: 'Vegetables',
      num: "Article 5007",
      rate: 4,
      text: "(4)"),
  Product(
      id: 2,
      title: "Orange",
      price: 500,
      description:
          "The orange is a usually round or oval citrus; its rind and flesh are generally orange, except the varieties of red pulp. The edible part of the orange is the flesh, consumed in fresh or in juice. The orange is also used to make stewed fruit, jams, for consumption as dehydrated fruit",
      image: "images/fruit.jpeg",
      category: "Fruits",
      num: "Article 5020",
      rate: 3,
      text: "(3)"),
  Product(
      id: 3,
      title: "Steak",
      price: 1000,
      description:
          "Steak is a food that can be described as tender, flavorful, juicy, and cooked to perfection; in fact, most consumers describe their ideal steak as just that: 'A tender, flavorful, medium-rare steak that isn't overly salty."
          "Tender, juicy, cooked perfectly and perfectly seasoned.",
      image: "images/viande1.jpeg",
      category: "Meat",
      num: "Article 5050",
      rate: 4,
      text: "(4)"),
  Product(
      id: 4,
      title: "Cake",
      price: 1020,
      description:
          "a breadlike food made from a dough or batter that is usually fried or baked in small flat shapes and is often unleavened.",
      image: "images/bakery1.jpeg",
      category: "Bakery",
      num: "Article 5010",
      rate: 3,
      text: "(3)"),
  Product(
      id: 5,
      title: "Macarons",
      price: 1070,
      description:
          "Macarons are small, delicate and meringue-based cookies. They have a crunchy exterior and soft, light, nougat-like interior. Macarons can be recognized by their characteristic slightly domed top and a ruffled base known as the foot",
      image: "images/bakery.jpeg",
      category: "Bakery",
      num: "Article 3007",
      rate: 5,
      text: "(5)"),
];
