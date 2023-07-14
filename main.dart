import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController nameController = TextEditingController();
  String greeting = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "What's your name?"
              ),
            ),
            ElevatedButton(
              child: Text('Submit'),
              onPressed: () {
                setState(() {
                  greeting = 'Hello, ${nameController.text}!';
                });
              },
            ),
            Text(greeting),
          ],
        ),
      ),
    );
  }
}
