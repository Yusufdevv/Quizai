import 'package:flutter/material.dart';

class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: height * 0.48,
          width: double.maxFinite,
          decoration: const BoxDecoration(
              color: Color(0xFF354CE0),
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(50))),
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: SizedBox(
                  height: 250,
                  width: 250,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color(0xFF5B70EE)))),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.52,
          width: double.maxFinite,
          
        )
      ],
    );
  }
}
