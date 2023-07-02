import 'package:Manikanta_Gopi/screens/projects.dart';
import 'package:Manikanta_Gopi/screens/socials.dart';
import 'package:Manikanta_Gopi/screens/techstack.dart';
import 'package:flutter/material.dart';

import 'booksread.dart';
import 'certifications.dart';
import 'education.dart';
import 'experience.dart';
import 'hobbies.dart';
import 'interests.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: ()=>
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => AboutPage()))
    , child: const Text("About"));
  }
}



class AboutPage extends StatelessWidget {
  const AboutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        alignment: Alignment.topRight,
        child: Column(
          children: const [
            SocialsButton(),
            TechStackButton(),
            ProjectsButton(),
            InterestsButton(),
            HobbiesButton(),
            ExperienceButton(),
            EducationButton(),
            CertificationsButton(),
            BooksReadButton()
          ],
        ),
      ),
    );
  }
}
