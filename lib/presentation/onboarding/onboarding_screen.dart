import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: height * 0.48,
            width: double.maxFinite,
            decoration: const BoxDecoration(
                color: Color(0xFF354CE0),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(50))),
            child: Image.asset(
              'assets/red_book.PNG',
              height: 249,
              width: 228,
            ),
          ),
          
        ],
      ),
    );
  }
}
