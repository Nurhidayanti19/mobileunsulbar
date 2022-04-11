import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Builder',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 237, 234, 234),
          title: Text(
            'ListView Jurusan',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: _PageList(),
      ),
    );
  }
}

class _PageList extends StatefulWidget {
  @override
  _PageListState createState() => _PageListState();
}

class _PageListState extends State<_PageList> {
  List<String> languages = [
    "Teknik Informatika",
    "Teknik Sipil",
    "Teknik Elektronika",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 172, 242, 192),
      child: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (BuildContext context, int index) {
          final number = index + 1;
          final language = languages[index].toString();
          return Card(
            child: ListTile(
              leading: Text(number.toString()),
              title: Text(language),
              trailing: Icon(Icons.check),
            ),
          );
        },
      ),
    );
  }
}
