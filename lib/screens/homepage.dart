import 'package:Manikanta_Gopi/screens/about.dart';
import 'package:Manikanta_Gopi/screens/booksread.dart';
import 'package:Manikanta_Gopi/screens/certifications.dart';
import 'package:Manikanta_Gopi/screens/education.dart';
import 'package:Manikanta_Gopi/screens/experience.dart';
import 'package:Manikanta_Gopi/screens/hobbies.dart';
import 'package:Manikanta_Gopi/screens/interests.dart';
import 'package:Manikanta_Gopi/screens/projects.dart';
import 'package:Manikanta_Gopi/screens/socials.dart';
import 'package:Manikanta_Gopi/screens/techstack.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // persistentFooterButtons: [
      //   TextButton(onPressed: (){}, child: const Text("footer button 1")),
      // ],
      // persistentFooterAlignment:  AlignmentDirectional.centerStart,
      body:  Container(
        padding: const EdgeInsets.all(30),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
                children: const [
                   Text("Manikanta Gopi",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 20,),
                  AboutButton(),
                ],
          ),
        ),
      ),
    );
  }
}
