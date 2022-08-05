import 'package:dream_job/models/user_model.dart';
import 'package:dream_job/main.dart';
import 'package:dream_job/pages/signin_page.dart';
import 'package:dream_job/providers/auth_provider.dart';
import 'package:dream_job/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:dream_job/themes.dart';
import 'package:email_validator/email_validator.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isEmailValid = false;
  bool isImageUploaded = false;

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController goalController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);
    var userProvider = Provider.of<UserProvider>(context);

    void showError(String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: mainRed,
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign Up',
                      style: formTitle,
                    ),
                    Text(
                      'Begin New Journey',
                      style: tagLine,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isImageUploaded = !isImageUploaded;
                        });
                      },
                      child: Image.asset(
                        isImageUploaded
                            ? 'assets/images/image_profile.png'
                            : 'assets/images/icon_upload.png',
                        width: 120,
                        height: 120,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Full Name',
                      style: formTitle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: 'Full Name',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                        fillColor: formBackgroundColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: mainPurple),
                          gapPadding: 10,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Email Address',
                      style: formTitle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: emailController,
                      onChanged: (value) {
                        bool isValid = EmailValidator.validate(value);

                        if (isValid) {
                          setState(() {
                            isEmailValid = true;
                          });
                        } else {
                          setState(() {
                            isEmailValid = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Email',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                        fillColor: formBackgroundColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(
                              color: isEmailValid ? mainPurple : mainRed),
                          gapPadding: 10,
                        ),
                      ),
                      style:
                          TextStyle(color: isEmailValid ? mainPurple : mainRed),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Password',
                      style: formTitle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                        fillColor: formBackgroundColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: mainPurple),
                          gapPadding: 10,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Your Goal',
                      style: formTitle,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: goalController,
                      decoration: InputDecoration(
                        hintText: 'Your Goal',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 25,
                        ),
                        fillColor: formBackgroundColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          gapPadding: 10,
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100),
                          borderSide: BorderSide(color: mainPurple),
                          gapPadding: 10,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(
                            width: 312,
                            height: 45,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: mainPurple,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(66),
                                ),
                              ),
                              onPressed: () async {
                                UserModel? user = await authProvider.register(
                                    emailController.text,
                                    passwordController.text,
                                    nameController.text,
                                    goalController.text);

                                if (user == null) {
                                  showError('Email already exists');
                                } else {
                                  userProvider.user = user;
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, 'home', (route) => false);
                                }
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignIn(),
                                ),
                              );
                            },
                            child: const Text(
                              'Back to Sign in',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Color(0xffB3B5C4),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
