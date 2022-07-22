import 'package:flutter/material.dart';
import 'package:dream_job/themes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Howdy',
                        style: formTitle,
                      ),
                      Text(
                        'Wibi Chamim',
                        style: tagLine,
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/image_profile.png',
                    height: 58,
                    width: 58,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
