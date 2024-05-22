import 'package:flutter/material.dart';

class Item {
  final String title;
  final String subtitle;

  Item({required this.title, required this.subtitle});
}

class ItemList extends StatelessWidget {
  final List<Item> items;

  const ItemList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index].title),
          subtitle: Text(items[index].subtitle),
        );
      },
    );
  }
}
