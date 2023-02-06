import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizai/assets/colors.dart';
import 'package:quizai/assets/icons.dart';
import 'package:quizai/common/w_widgets/w_scale.dart';

class HeaderPart extends StatelessWidget {
  const HeaderPart({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.subSecTitle,
    this.onTap,
    this.hasButton = false,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String subSecTitle;
  final VoidCallback? onTap;
  final bool hasButton;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          margin: const EdgeInsets.symmetric(horizontal: 40),
          decoration: const BoxDecoration(
              color: Color(0xFF556BF3),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(24))),
        ),
        Container(
          height: 286,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 66, 87, 221),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(24))),
        ),
        Container(
          height: 268,
          width: double.maxFinite,
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top + 24,
            right: 30,
            left: 30,
            bottom: 40,
          ),
          decoration: const BoxDecoration(
              color: mainColor,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(24))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(AppIcons.quizai),
              const SizedBox(height: 40),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold, color: white),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    subTitle,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: white.withOpacity(0.8)),
                  ),
                  const SizedBox(width: 4),
                  hasButton
                      ? WScaleAnimation(
                          onTap: onTap!,
                          child: Text(
                            subSecTitle,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: secondColor),
                          ),
                        )
                      : Text(
                          subSecTitle,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: white.withOpacity(0.8)),
                        ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
