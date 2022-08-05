import 'package:dream_job/pages/home_page.dart';
import 'package:dream_job/pages/onboarding_page.dart';
import 'package:dream_job/pages/signin_page.dart';
import 'package:dream_job/pages/signup_page.dart';
import 'package:dream_job/providers/auth_provider.dart';
import 'package:dream_job/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/splash_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => const Home(),
          '/onboarding': (context) => const OnBoarding(),
          '/sign-in': (context) => const SignIn(),
          '/sign-up': (context) => SignUp()
        },
      ),
    );
  }
}
