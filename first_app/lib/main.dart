import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('HELLOITSDAKSH'),
          ),
          backgroundColor: Colors.grey[800],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/dp logo black.png'),
          ),
        ),
        backgroundColor: Colors.grey,
      ),
    ),
    );
}

