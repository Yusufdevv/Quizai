import 'package:flutter/material.dart';
import 'package:quizai/assets/colors.dart';
import 'package:quizai/common/w_widgets/w_button.dart';
import 'package:quizai/common/w_widgets/w_textfield.dart';
import 'package:quizai/presentation/login/widgets/header_part.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});
  static const routeName = '/forgot-password';
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
              const HeaderPart(
                title: 'Forgot Password',
                subTitle: 'Forgot your password?',
                subSecTitle: 'Don\'t worry',
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
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
                    const SizedBox(height: 20),
                    WButton(
                        height: 56,
                        borderRadius: 16,
                        child: const Text('Recover Password'),
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
