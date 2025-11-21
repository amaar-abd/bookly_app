import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.textcolor,
    required this.backgroundColor,
    this.borderRadius,
    required this.text,
  });
  final String text;
  final Color textcolor;
  final Color backgroundColor;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: Styles.titleMeduim20.copyWith(color: textcolor),
        ),
      ),
    );
  }
}
