import 'package:flutter/material.dart';
import 'Chatscreen.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text('Friendly Chat'),
      ),
      body:new ChatScreen() ,
    );
  }
}
