import 'package:flutter/material.dart';
import 'package:quizai/assets/colors.dart';
import 'package:quizai/common/w_widgets/w_button.dart';
import 'package:quizai/common/w_widgets/w_scale.dart';
import 'package:quizai/common/w_widgets/w_textfield.dart';
import 'package:quizai/presentation/login/pages/forgot_password_screen.dart';
import 'package:quizai/presentation/login/widgets/header_part.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  static const routeName = '/login';

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
                title: 'Sign In',
                subTitle: 'Don\'t have an account?',
                subSecTitle: 'Sign Up',
                hasButton: true,
                onTap: () => Navigator.pop(context),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Remember me'),
                        WScaleAnimation(
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(color: secondColor),
                            ),
                            onTap: () => Navigator.pushNamed(
                                context, ForgotPasswordScreen.routeName)),
                      ],
                    ),
                    const SizedBox(height: 20),
                    WButton(
                        height: 56,
                        borderRadius: 16,
                        child: const Text('Sign In'),
                        onTap: () {})
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
