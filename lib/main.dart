import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  // _MyAppState()
  // {
  //   for(int i = 0; i < 20; i++)
  //     widgets.add(Text("Data Ke - " + i.toString(), style: TextStyle(fontSize: 35),));
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Listview"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                ElevatedButton(
                  child: Text("Tambah Data"),
                  onPressed: () {
                    setState(() {
                      widgets.add(Text(
                        "Data Ke - " + counter.toString(),
                        style: TextStyle(fontSize: 20),
                      ));
                      counter++;
                    });
                  },
                ),
                ElevatedButton(
                  child: Text("Hapus Data"),
                  onPressed: () {
                    setState(() {
                    widgets.removeLast();
                    });
                    counter--;
                  },
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            )
          ],
        ),
      ),
    );
  }
}
