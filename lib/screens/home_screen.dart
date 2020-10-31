import 'package:DeleteAndDrag/widgets/home_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: Text("Swipe to Delete and Drag & Drop"),
      ),
      body: HomeList(),
    );
  }
}
