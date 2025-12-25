import 'package:flutter/material.dart';

class GroceryGrocery extends StatelessWidget {
  const GroceryGrocery({super.key, required this.groceryId});

  final String groceryId;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[400],
      child: Center(child: Text("Feeds for grocery $groceryId")),
    );
  }
}
