import 'package:flutter/material.dart';

class ExperienceButton extends StatelessWidget {
  const ExperienceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: ()=>
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ExperiencePage()))
        , child: const Text('Experience'));
  }
}


class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text("EXPERIENCE"),
        )
    );
  }
}
