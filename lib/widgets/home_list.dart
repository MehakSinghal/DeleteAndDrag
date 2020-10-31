import 'package:flutter/material.dart';

class HomeList extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  List<String>myList=[
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
    "Item 9",
    "Item 10",
    "Item 11",
    "Item 12",
    "Item 13",
  ];
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
        children: List.generate(myList.length, (index){
          return Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction){
              myList.removeAt(index);
            },
            child: ListTile(
              key: UniqueKey(),
              title: Text(myList[index]),
            ),
          );
        }),
        onReorder: (int oldIndex, int newIndex){
          setState(() {
            if(newIndex > oldIndex){
              newIndex -= 1;
            }
            final String newString= myList.removeAt(oldIndex);
            myList.insert(newIndex, newString);
          });
        },
      );
  }
}
