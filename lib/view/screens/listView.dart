

import 'package:flutter/material.dart';

class ListView extends StatefulWidget {
  const ListView({super.key});

  @override
  State<ListView> createState() => _ListViewState();
  
  static builder({required int itemCount, required ListTile Function(BuildContext context, int index) itemBuilder}) {}
}

class _ListViewState extends State<ListView> {
  List<String> foodIcons = [
    'https://img.icons8.com/fluency/1x/hamburger.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView.builder(
        itemCount: 10, // The number of items in your list
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
          title: Text('Item $index'),
    );
  },
),
    );
  }
}