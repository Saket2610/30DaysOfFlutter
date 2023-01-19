import 'package:flutter/material.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  // build is a meathod
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Text(
        "login_page",
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        textScaleFactor: 2.0,
      )),
    );
  }
}
