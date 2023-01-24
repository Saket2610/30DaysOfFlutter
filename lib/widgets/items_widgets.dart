import 'package:flutter/material.dart';
import 'package:flutter_first/Models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({
    Key? key,
    required this.item,
  })  : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: StadiumBorder(),
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        //
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$" + item.price.toString(),
          textScaleFactor: 1.5,
        ),
        //we can add items in catalog to increase items or check line 14
        // style: TextStyle(
        //   color: Colors.green,
        //   fontWeight: FontWeight.bold,
        // ),
      ),
    );
  }
}
