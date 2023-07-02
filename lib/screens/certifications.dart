import 'package:flutter/material.dart';

class CertificationsButton extends StatelessWidget {
  const CertificationsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: ()=>
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CertificationsPage()))
        , child: const Text('Certifications'));
  }
}


class CertificationsPage extends StatelessWidget {
  const CertificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text("CERTIFICATIONS"),
        )
    );
  }
}
