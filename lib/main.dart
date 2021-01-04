import 'package:flutter/material.dart';

void main() {
  runApp(RoundCheckBox());
}

List<String> items = [
  'item 1',
  'item 2',
  'item 3',
  'item 4',
  'item 5',
  'item 6',
  'item 7',
  'item 8',
  'item 9',
  'item 10',
];
List<IconData> itemsCheck = [
  Icons.check_circle_outline,
  Icons.check_circle_outline,
  Icons.check_circle_outline,
  Icons.check_circle_outline,
  Icons.check_circle_outline,
  Icons.check_circle_outline,
  Icons.check_circle_outline,
  Icons.check_circle_outline,
  Icons.check_circle_outline,
  Icons.check_circle_outline
];

class RoundCheckBox extends StatefulWidget {
  @override
  _RoundCheckBoxState createState() => _RoundCheckBoxState();
}

class _RoundCheckBoxState extends State<RoundCheckBox> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter CheckBoxes"),
          ),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    title: Text(items[index]),
                    leading: IconButton(
                        icon: Icon(itemsCheck[index]),
                        onPressed: () {
                          setState(() {
                            if (itemsCheck[index] == Icons.check_circle_outline)
                              itemsCheck[index] = Icons.check_circle;
                            else
                              itemsCheck[index] = Icons.check_circle_outline;
                          });
                        }));
              })),
    );
  }
}
