import 'package:flutter/material.dart';
import 'package:dream_job/themes.dart';

class Categories extends StatelessWidget {
  final String imageUrl;
  final String name;

  const Categories({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        height: 270,
        width: double.infinity,
        padding: const EdgeInsets.only(
          left: defaultMargin,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              '12,309 available',
              style: formTitle.copyWith(
                color: Colors.white,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        children: [header()],
      ),
    );
  }
}
