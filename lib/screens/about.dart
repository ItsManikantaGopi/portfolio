import 'package:Manikanta_Gopi/screens/projects.dart';
import 'package:Manikanta_Gopi/screens/socials.dart';
import 'package:Manikanta_Gopi/screens/tech_stack.dart';
import 'package:flutter/material.dart';

import 'books_read.dart';
import 'certifications.dart';
import 'education.dart';
import 'experience.dart';
import 'hobbies.dart';
import 'interests.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AboutPage())),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text("About"),
            SizedBox(width: 10),
            Icon(Icons.arrow_forward, size: 20)
          ],
        ));
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ExperienceButton(),
            TechStackButton(),
            ProjectsButton(),
            EducationButton(),
            CertificationsButton(),
            BooksReadButton(),
            InterestsButton(),
            HobbiesButton(),
            SocialsButton(),
          ],
        ),
      ),
    );
  }
}
