import 'package:dream_job/widgets/job_card.dart';
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

    Widget listJob() {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Just Posted',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: const [
                    JobCard(
                      imageurl: 'assets/images/icon_google.png',
                      company: 'Google',
                      jobDesc: 'Front-End Developer',
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    JobCard(
                      imageurl: 'assets/images/icon_instagram.png',
                      company: 'Instagram',
                      jobDesc: 'UI Designer',
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    JobCard(
                      imageurl: 'assets/images/icon_facebook.png',
                      company: 'Facebook',
                      jobDesc: 'Data Scientist',
                    ),
                    SizedBox(
                      height: 35,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            const SizedBox(
              height: 30,
            ),
            listJob(),
            const SizedBox(
              height: 30,
            ),
            listJob(),
          ],
        ),
      ),
    );
  }
}
