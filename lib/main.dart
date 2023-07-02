import 'package:Manikanta_Gopi/widgets/splash_screen_widget.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:page_transition/page_transition.dart';
import 'screens/homepage.dart';

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
        home: const SplashScreenWidget(
          nextScreenWidget:  MyHomePage(),
        ));
  }
}

