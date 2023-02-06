import 'package:flutter/material.dart';
import 'package:quizai/assets/colors.dart';
import 'package:quizai/common/w_widgets/w_button.dart';
import 'package:quizai/common/w_widgets/w_textfield.dart';
import 'package:quizai/presentation/login/pages/login_screen.dart';
import 'package:quizai/presentation/login/widgets/header_part.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  static const routeName = '/register';
  final TextEditingController _emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeaderPart(
                title: 'Register New Account',
                subTitle: 'Already have an account?',
                subSecTitle: 'Sign In',
                hasButton: true,
                onTap: () =>
                    Navigator.pushNamed(context, LoginScreen.routeName),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    WTextField(
                      title: 'Full Name',
                      sizeBetweenFieldTitle: 6,
                      height: 56,
                      controller: _emailcontroller,
                      borderRadius: 14,
                      cursorColor: Colors.black,
                      onChanged: (value) {},
                      prefix: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                      fillColor: fillColor,
                      hintText: 'Yusufjon Nurullayev',
                    ),
                    const SizedBox(height: 16),
                    WTextField(
                      title: 'Email',
                      sizeBetweenFieldTitle: 6,
                      height: 56,
                      controller: _emailcontroller,
                      borderRadius: 14,
                      cursorColor: Colors.black,
                      onChanged: (value) {},
                      prefix: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                      ),
                      fillColor: fillColor,
                      hintText: 'examle@quizai.com',
                    ),
                    const SizedBox(height: 16),
                    WTextField(
                      title: 'Password',
                      sizeBetweenFieldTitle: 6,
                      height: 56,
                      controller: _emailcontroller,
                      borderRadius: 14,
                      cursorColor: Colors.black,
                      onChanged: (value) {},
                      prefix: const Icon(
                        Icons.lock_open_rounded,
                        color: Colors.grey,
                      ),
                      fillColor: fillColor,
                      hintText: 'examle@quizai.com',
                    ),
                    const SizedBox(height: 16),
                    WTextField(
                      title: 'Password',
                      sizeBetweenFieldTitle: 6,
                      height: 56,
                      controller: _emailcontroller,
                      borderRadius: 14,
                      cursorColor: Colors.black,
                      onChanged: (value) {},
                      prefix: const Icon(
                        Icons.lock_open_rounded,
                        color: Colors.grey,
                      ),
                      fillColor: fillColor,
                      hintText: 'examle@quizai.com',
                    ),
                    const SizedBox(height: 20),
                    WButton(
                        height: 56,
                        borderRadius: 16,
                        child: const Text('Sign Up'),
                        onTap: () {})
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
