import 'package:flutter/material.dart';
import 'package:ssbb/core/widgets/custom_button.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: '19.99 \$',
            backgroundColor: Colors.white,
            textcolor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
        ),

        Expanded(
          child: CustomButton(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            text: 'Free Preview',
            backgroundColor: Colors.orange,
            textcolor: Colors.white,
          ),
        ),
      ],
    );
  }
}
