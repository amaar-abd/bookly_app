import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Stack(
            children: [
              Image.asset(AssetsData.logotwo, height: 300, width: 300),
              Positioned(
                top: 230,
                child: Center(
                  child: Text(
                    'مكتبتك الرقمية تبدأ من هنا',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'ciro',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
