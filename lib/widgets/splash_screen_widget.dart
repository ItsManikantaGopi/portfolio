import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreenWidget extends StatelessWidget {
  final Widget nextScreenWidget;
  const SplashScreenWidget({super.key, required this.nextScreenWidget});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: double.infinity,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
      duration: 1500,
      splash: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Manikanta Gopi',
                  textStyle: const TextStyle(
                    fontSize: 32.0,
                  ),
                  speed: const Duration(milliseconds: 200)),
            ],
            onTap: () {
            },
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 10),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
        ),
      ),
      nextScreen: nextScreenWidget,
    );
  }
}
