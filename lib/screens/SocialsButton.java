import 'package:flutter/material.dart';

class SocialsButton extends StatelessWidget {
  const SocialsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: ()=>
      Navigator.push(context,
    MaterialPageRoute(builder: (context) => const SocialsPage()))
    , child: const Text('Socials'));
  }
}


class SocialsPage extends StatelessWidget {
  const SocialsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("SOCIALS"),
      )
    );
  }
}
