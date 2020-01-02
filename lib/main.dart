import 'package:flutter/material.dart';
import 'Homepage.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
      title: "Friendly Chat",
      home: new Homepage(),
    );
  }
}
