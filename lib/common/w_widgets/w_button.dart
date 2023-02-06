import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizai/assets/colors.dart';
import 'package:quizai/common/w_widgets/w_scale.dart';

class WButton extends StatelessWidget {
  final double? width;
  final double? height;
  final String text;
  final Color? color;
  final Color textColor;
  final TextStyle? textStyle;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final GestureTapCallback onTap;
  final BoxBorder? border;
  final double borderRadius;
  final Widget? child;
  final Color disabledColor;
  final bool isDisabled;
  final bool isLoading;
  final double? scaleValue;
  final List<BoxShadow>? shadow;
  final Gradient? gradient;

  const WButton({
    required this.onTap,
    this.text = '',
    this.color = mainColor,
    this.textColor = white,
    this.borderRadius = 8,
    this.disabledColor = mainColor,
    this.isDisabled = false,
    this.isLoading = false,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.textStyle,
    this.border,
    this.child,
    this.scaleValue,
    this.shadow,
    this.gradient,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => WScaleAnimation(
        scaleValue: scaleValue ?? 0.95,
        onTap: () {
          if (!(isLoading || isDisabled)) {
            onTap();
          }
        },
        isDisabled: isDisabled,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: width,
          height: height ?? 46,
          margin: margin,
          padding: padding ?? EdgeInsets.zero,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isDisabled ? disabledColor : color,
            borderRadius: BorderRadius.circular(borderRadius),
            border: border,
            boxShadow: shadow,
            gradient: gradient,
          ),
          child: isLoading
              ? const Center(child: CupertinoActivityIndicator(color: white))
              : AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 200),
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: 14,
                      fontWeight:
                          isDisabled ? FontWeight.w700 : FontWeight.w600,
                      height: 1.36,
                      color: textColor),
                  child: child ??
                      Text(
                        text,
                        style: textStyle,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                ),
        ),
      );
}
