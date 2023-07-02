import 'package:animated_radial_menu/animated_radial_menu.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Manikanta Gopi',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: AnimatedSplashScreen(
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
          nextScreen: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var factor = min(height, width);
    return Scaffold(
      body: Container(
          margin: EdgeInsets.all( factor* 0.005),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 2,
            ),
          ),
          child: Container(
            margin: EdgeInsets.all(factor * 0.05),
            decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(100)),
            child: Container(
              margin: EdgeInsets.all(factor * 0.08),
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(100)),
              child: Container(
                margin: EdgeInsets.all(factor * 0.07),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(100)),
                child: Container(
                  margin: EdgeInsets.all(factor * 0.075),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(100)),
                  child: Container(),
                ),
              ),
            ),
          )),
    );
  }
}
