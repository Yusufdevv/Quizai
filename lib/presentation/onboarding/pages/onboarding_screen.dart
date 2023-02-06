import 'package:flutter/material.dart';
import 'package:quizai/assets/colors.dart';
import 'package:quizai/presentation/login/pages/login_screen.dart';
import 'package:quizai/presentation/login/pages/register_screen.dart';
import 'package:quizai/presentation/onboarding/widgets/onboarding_background.dart';
import 'package:quizai/presentation/onboarding/widgets/pageview_item.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  int currentItem = 0;

  String image = 'assets/images/red_book.PNG';
  String title = 'Create your own game';
  String subTitle =
      'Create your own game game your,\ncreate your own game take\ncreate your own book\ncreate your lake';

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          OnboardingBackground(height: height),
          PageView.builder(
            controller: pageController,
            itemCount: 3,
            itemBuilder: (context, index) {
              return PageViewItem(
                  height: height,
                  image: image,
                  title: title,
                  subTitle: subTitle);
            },
            onPageChanged: (value) {
              currentItem = value;
              setState(() {});
            },
          ),
          Positioned(
              left: 16,
              right: 16,
              bottom: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Container(
                              height: 5,
                              width: 20,
                              margin:
                                  EdgeInsets.only(right: index != 2 ? 5 : 0),
                              decoration: BoxDecoration(
                                  color: currentItem == index
                                      ? mainColor
                                      : lavender,
                                  borderRadius: BorderRadius.circular(4)),
                            )),
                  ),
                  const SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushReplacementNamed(
                            context, RegisterScreen.routeName),
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade400),
                        ),
                      ),
                      if (currentItem < 2)
                        GestureDetector(
                          onTap: () {
                            pageController.animateToPage(++currentItem,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut);
                            setState(() {});
                          },
                          child: Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: const Icon(Icons.arrow_forward_ios,
                                color: Colors.white),
                          ),
                        )
                      else
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                                context, RegisterScreen.routeName);
                          },
                          child: Container(
                            height: 55,
                            width: 150,
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(14)),
                            child: const Center(
                              child: Text(
                                'Get Started',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                          ),
                        )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
