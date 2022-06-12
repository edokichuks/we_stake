import 'package:flutter/material.dart';

class PolicyScreen extends StatelessWidget {
  const PolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Color(0xff27326e),
      title: Text(
        'Terms of Service',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
      ),
    ));
  }
}
