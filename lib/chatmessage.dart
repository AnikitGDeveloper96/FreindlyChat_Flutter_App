import 'package:flutter/material.dart';
import 'Chatscreen.dart';

const String _name="ANIKIT GROVER";

class chatmessage extends StatelessWidget {
  final String text;
// constructor recieve particular text
  chatmessage({this.text});

  @override

  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: new CircleAvatar(
              child: new Text(_name[0]),
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name,style: Theme.of(context).textTheme.subhead),
              new Container(
                margin: const EdgeInsets.only(top:5.0),
                child: new Text(text),
              )],
          )
        ],
      ),
    );
  }
}
