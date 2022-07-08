import 'package:flutter/material.dart';

class reto4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Instagram'),
        actions: [
          Icon(
            Icons.add_box_outlined,
          ),
          Icon(
            Icons.favorite_border_outlined,
          ),
          Icon(Icons.message_outlined)
        ],
      ),
      body: SafeArea(child: Column()),
    );
  }
}
