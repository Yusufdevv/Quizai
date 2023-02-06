import 'package:flutter/material.dart';
import 'package:quizai/presentation/login/pages/forgot_password_screen.dart';
import 'package:quizai/presentation/login/pages/login_screen.dart';
import 'package:quizai/presentation/login/pages/register_screen.dart';
import 'package:quizai/presentation/onboarding/pages/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizai',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingScreen(),
      routes: {
        LoginScreen.routeName: (context) =>   LoginScreen(),
        RegisterScreen.routeName: (context) =>   RegisterScreen(),
        ForgotPasswordScreen.routeName:(context) =>   ForgotPasswordScreen(),
      },
    );
  }
}
