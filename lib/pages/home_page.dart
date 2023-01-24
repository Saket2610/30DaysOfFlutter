import 'package:flutter/material.dart';
import 'package:flutter_first/Models/catalog.dart';
import 'package:flutter_first/widgets/drawer.dart';

import '../widgets/items_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => catalogModel.items[0]);
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
      // $days is known as string manipluataion and we can also
      // use it as ${days.obj} is it has something it it
      // we can use it as $name or + name after closing the double inverted commas
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            // itemCount: catalogModel.items.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                // item: catalogModel.items[index],
                item: dummyList[index],
              );
            }),
      ),
      drawer: Mydrawer(),
    );
  }
}
