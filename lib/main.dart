import 'package:animated_radial_menu/animated_radial_menu.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manikanta Gopi',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const MyHomePage(),
    );
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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [



            Expanded(
              child: ParallaxStack(
                layers: [
                  ParallaxLayer(
                    yRotation: 0.35,
                    xOffset: 60,
                    zRotation: 0.35,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child:AnimatedTextKit(
                          animatedTexts: [
                            WavyAnimatedText('Manikanta Gopi',
                                textStyle: const TextStyle(
                                  fontSize: 32.0,
                                ),

                                speed: const Duration(milliseconds: 200)),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                          totalRepeatCount: 4,
                          pause: const Duration(milliseconds: 10),
                          displayFullTextOnTap: true,
                          stopPauseOnTap: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Center(
            //   child: Stack(
            //     children: [
            //       RadialMenu(
            //           children: [
            //         RadialButton(
            //           buttonColor: Colors.transparent,
            //             icon: const Icon(Icons.person_outlined,), onPress: ()=>{})
            //       ])
            //     ],
            //   )
            // ),


          ],
        ),
      ),
    );
  }
}
