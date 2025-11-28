import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/styles.dart';

class CustomErrormessageWidget extends StatelessWidget {
  const CustomErrormessageWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: Styles.titleMeduim30);
  }
}
