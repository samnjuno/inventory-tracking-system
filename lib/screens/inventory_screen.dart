import 'package:flutter/material.dart';

class InventoryScreen extends StatefulWidget {
  @override
  _InventoryScreenState createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  final List<String> inventoryItems = [];
  final TextEditingController _itemController = TextEditingController();

  void _addItem() {
    if (_itemController.text.isNotEmpty) {
      setState(() {
        inventoryItems.add(_itemController.text);
      });
      _itemController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manage Inventory')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _itemController,
              decoration: InputDecoration(labelText: 'Enter Item'),
            ),
            ElevatedButton(
              onPressed: _addItem,
              child: Text('Add Item'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: inventoryItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(inventoryItems[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
