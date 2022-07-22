import 'package:dream_job/pages/onboarding_page.dart';
import 'package:dream_job/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'pages/splash_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoarding(),
        '/signin': (context) => const SignIn(),
      },
    );
  }
}
