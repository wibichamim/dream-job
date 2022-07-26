import 'package:dream_job/widgets/category_card.dart';
import 'package:dream_job/widgets/job_card.dart';
import 'package:flutter/material.dart';
import 'package:dream_job/themes.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Column(
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
                      'Username',
                      style: tagLine,
                    ),
                  ],
                ),
                Container(
                  width: 58,
                  height: 58,
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: mainPurple,
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/image_profile.png',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      );
    }

    Widget category() {
      return Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hot Categories',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryCard(
                    text: 'Website Developer',
                    imageUrl: 'assets/images/image_category1.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CategoryCard(
                    text: 'Mobile Developer',
                    imageUrl: 'assets/images/image_category2.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CategoryCard(
                    text: 'App Designer',
                    imageUrl: 'assets/images/image_category3.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CategoryCard(
                    text: 'Content Writer',
                    imageUrl: 'assets/images/image_category4.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  CategoryCard(
                    text: 'Video Grapher',
                    imageUrl: 'assets/images/image_category5.png',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
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

    Widget bottomNavBar() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        unselectedItemColor: lightGray,
        selectedItemColor: darkGray,
        currentIndex: 0,
        elevation: 0,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/icon_home.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/icon_notification.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/icon_love.png')),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/icon_user.png')),
            label: '',
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            category(),
            listJob(),
          ],
        ),
      ),
    );
  }
}
