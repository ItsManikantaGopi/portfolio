import 'package:flutter/material.dart';

class HobbiesButton extends StatelessWidget {
  const HobbiesButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: ()=>
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HobbiesPage()))
        , child: const Text('Hobbies'));
  }
}


class HobbiesPage extends StatelessWidget {
  const HobbiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text("HOBBIES"),
        )
    );
  }
}
