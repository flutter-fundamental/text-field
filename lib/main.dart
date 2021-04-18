import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("text field"),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildTextField(),
              Text(controller.text),
              buildTextField(),
            ],
          ),
        ),
      ),
    );
  }

  TextField buildTextField() {
    return TextField(
      obscureText: true,
      maxLength: 8,
      maxLines: 1,
      onChanged: (value) {
        setState(() {});
      },
      controller: controller,
    );
  }
}
