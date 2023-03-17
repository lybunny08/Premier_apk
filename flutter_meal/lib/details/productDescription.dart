import 'package:flutter/material.dart';

class ProductDescription extends StatefulWidget {
  final String description;

  ProductDescription({required this.description});

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool showFullDescription = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          showFullDescription
              ? widget.description
              : '${widget.description.substring(0, 100)}... ',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 17.2,
            color: Colors.grey[700],
          ),
        ),
        showFullDescription
            ? SizedBox()
            : GestureDetector(
                onTap: () {
                  setState(() {
                    showFullDescription = true;
                  });
                },
                child: Text(
                  'More',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ],
    );
  }
}
