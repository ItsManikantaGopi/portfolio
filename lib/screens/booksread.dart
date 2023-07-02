import 'package:flutter/material.dart';

class BooksReadButton extends StatelessWidget {
  const BooksReadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: ()=>
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const BooksReadPage()))
        , child: const Text('Books Read'));
  }
}


class BooksReadPage extends StatelessWidget {
  const BooksReadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text("BOOKS READ"),
        )
    );
  }
}
