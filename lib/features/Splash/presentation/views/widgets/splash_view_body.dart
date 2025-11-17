import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideingAnimation;

  @override
  void initState() {
    super.initState();
    initslidingAnimation();
  }
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(
          child: Stack(
            children: [
              Image.asset(AssetsData.logotwo, height: 300, width: 300),
              Positioned(
                top: 200,
                left: 20,
                child: AnimatedBuilder(
                  animation: slideingAnimation,
                  builder: (context, child) => SlideTransition(
                    position: slideingAnimation,
                    child: Text(
                      'مكتبتك الرقمية تبدأ من هنا',

                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'ciro',
                      ),
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
   void initslidingAnimation() {
    
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slideingAnimation = Tween<Offset>(
      begin: Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }
}
