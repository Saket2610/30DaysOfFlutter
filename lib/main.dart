import 'package:flutter/material.dart';
import 'package:flutter_first/home_page.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "saket";
    num temperature = 43;
    var day = "tuesday";
    const pi = 3.14;
    // values in const cant be changed
    //in case of var , it can take any value but it is assigned my the compiler
    // num can take both kind int or double
    return MaterialApp(home: HomePage());
  }
}
