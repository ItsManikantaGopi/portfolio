import 'package:flutter/material.dart';

class EducationButton extends StatelessWidget {
  const EducationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: ()=>
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EducationPage()))
        , child: const Text('Education'));
  }
}


class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text("EDUCATION"),
        )
    );
  }
}
