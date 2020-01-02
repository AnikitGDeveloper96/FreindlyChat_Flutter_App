import 'package:flutter/material.dart';
import 'chatmessage.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController _controller = new TextEditingController();

  final List<chatmessage> _messages =<chatmessage>[];

  void _HandleSubmitted(String text) {
    _controller.clear ( );
    chatmessage message = new chatmessage(
      text: text,
    );
    setState(() {                                                  //new
      _messages.insert(0, message);                                //new
    });                                                            //new
  }
  Widget _textcomposer()
  {
    return new IconTheme(
      data: new IconThemeData(color: Colors.blue),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child:new Row(
          children: <Widget>[
            new Flexible(child: new TextField(
              decoration : new InputDecoration.collapsed(hintText: "Send Message"),
              controller: _controller,
              onSubmitted: _HandleSubmitted,
            ),
            ),
            new Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: ()=>_HandleSubmitted(_controller.text)
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_,int index)=> _messages[index],
            itemCount: _messages.length,
          ),
        ),
        new Divider(height: 1.0,),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textcomposer(),
        )
      ],
    );;
  }
}
