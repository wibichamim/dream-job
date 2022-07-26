import 'package:dream_job/pages/categories_page.dart';
import 'package:flutter/material.dart';
import 'package:dream_job/themes.dart';

class CategoryCard extends StatelessWidget {
  final String text;
  final String imageUrl;

  const CategoryCard({required this.text, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Categories(
                imageUrl: imageUrl,
                name: text,
              ),
            ));
      },
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 16, right: 16),
            child: Text(
              text,
              style: cardTitle,
            ),
          ),
        ),
      ),
    );
  }
}
