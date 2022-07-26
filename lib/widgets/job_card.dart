import 'package:flutter/material.dart';
import 'package:dream_job/themes.dart';

class JobCard extends StatelessWidget {
  final String imageurl;
  final String jobDesc;
  final String company;

  const JobCard(
      {required this.imageurl, required this.company, required this.jobDesc});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageurl,
          width: 45,
          height: 45,
        ),
        const SizedBox(
          width: 26,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jobDesc,
              style: jobTitle,
            ),
            Text(
              company,
              style: TextStyle(color: lightGray),
            )
          ],
        )
      ],
    );
  }
}
