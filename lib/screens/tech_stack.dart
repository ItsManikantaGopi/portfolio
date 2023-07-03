import 'package:flutter/material.dart';

class TechStackButton extends StatelessWidget {
  const TechStackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: ()=>
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const TechStackPage()))
        , child: const Text('TechStack'));
  }
}


class TechStackPage extends StatelessWidget {
  const TechStackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("TechStack"),
      )
    );
  }
}
