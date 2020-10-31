import 'package:Myanimation_app/myanim.dart';
import 'package:Myanimation_app/myanimationtask.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Animation'),
        ),
        body: MyA1()
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
