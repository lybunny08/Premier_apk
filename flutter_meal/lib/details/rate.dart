import 'package:flutter/material.dart';

Widget rate({
  required int rateStar,
  required double width,
  required double iconSize,
  required Color color,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
    width: width,
    child: Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (int i = 0; i < 5; i++)
              Icon(
                Icons.star_border,
                color: Colors.white,
                size: 30,
              ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for (int i = 0; i < rateStar; i++)
              Icon(
                Icons.star,
                color: color,
                size: 30,
              ),
          ],
        ),
      ],
    ),
  );
}
