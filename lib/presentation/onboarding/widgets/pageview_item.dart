import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    Key? key,
    required this.height,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final double height;
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: height * 0.48,
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child:
                  SizedBox(height: 250, width: 250, child: Image.asset(image)),
            ),
          ),
        ),
        SizedBox(
          height: height * 0.52,
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 60,
                  bottom: 30,
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                subTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
