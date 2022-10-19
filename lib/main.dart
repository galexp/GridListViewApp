import 'package:flutter/material.dart';

void main() {
  runApp(const ListViewApp());
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    //List.Tile
    List<String> mobileNumbers = [
      "09089347834",
      "83483489349",
      "09049347834",
      "83483489349",
      "89348934894",
      "78347834783",
      "93498489344",
      "78347834233",
    ];
    return MaterialApp(
      title: "ListView App",
      theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView App"),
        ),
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: mobileNumbers.length,
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
          itemBuilder: (context, index) => 
          Card(
            color: Colors.white,
            child: Container(
              clipBehavior: Clip.none,
              padding: const EdgeInsets.all(10),
              child: Text(
                mobileNumbers[index],
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
