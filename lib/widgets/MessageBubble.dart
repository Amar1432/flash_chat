import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String text;
  final String sender;
  final bool isMe;

  const MessageBubble({this.text, this.sender, this.isMe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            sender,
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
          Container(
            padding: EdgeInsets.all(6),
            child: Material(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)
              ),
              elevation: 5.0,
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// This is a sample text to check whether git is working or not
