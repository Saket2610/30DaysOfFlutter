import 'package:flutter/material.dart';
import 'package:flutter_first/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 99, 230, 143),
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black38),
        title: Text(
          "welcome",
          // style: TextStyle(color: Colors.red),
        ),
      ),
      body: Center(
        // $days is known as string manipluataion and we can also
        // use it as ${days.obj} is it has something it it
        // we can use it as $name or + name after closing the double inverted commas
        child: Container(
          child: Text("welcome pussy $days flutter and suck my dick"),
        ),
      ),
      drawer: Mydrawer(),
    );
  }
}
