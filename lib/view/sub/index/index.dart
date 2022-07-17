import 'package:flutter/material.dart';

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.face,
          size: 200,
        ),
      ),
    );
  }
}
