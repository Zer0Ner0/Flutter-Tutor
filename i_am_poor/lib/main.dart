import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          title: Center(
            child: Text('I Am Poor'),
          ),
          backgroundColor: Colors.green[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/420.jpg'),
          ),
        ),
      ),
    ),
  );
}
