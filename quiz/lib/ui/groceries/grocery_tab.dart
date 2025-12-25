import 'package:flutter/material.dart';
import 'package:quiz/ui/groceries/tabs/grocery_grocery.dart';
// import 'grocery_list.dart';


class GroceryManage extends StatefulWidget {
  const GroceryManage({super.key, required this.groceryId});
  final String groceryId;

  @override
  State<GroceryManage> createState() => _GroceryManageState();
}
enum GroceryTab{ groceryTab, searchTab}

class _GroceryManageState extends State<GroceryManage> {
  GroceryTab _currentTab = GroceryTab.groceryTab;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentTab.index,
        children: [
          GroceryGrocery(groceryId: widget.groceryId),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).colorScheme.primary,
        currentIndex: _currentTab.index,
        onTap: (index) {
          setState(() {
            _currentTab = GroceryTab.values[index];
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            label: 'Groceries',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
      ),
    );
  }
}