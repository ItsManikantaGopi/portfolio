import 'package:flutter/material.dart';

class InterestsButton extends StatelessWidget {
  const InterestsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: ()=>
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const InterestsPage()))
        , child: const Text('Interests'));
  }
}


class InterestsPage extends StatelessWidget {
  const InterestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text("INTERESTS"),
        )
    );
  }
}
