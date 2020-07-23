import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flash_chat/widgets/MessageBubble.dart';
import 'package:flutter/material.dart';

class MessageStream extends StatelessWidget {
  MessageStream({
    this.loggedInUser, this.firestore,
  });

  final loggedInUser;
  final firestore;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: firestore.collection('messages').snapshots(),
      builder: (context, snapshot) {
        List<MessageBubble> messageWidget = [];
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }
        final messages = snapshot.data.documents;
        for (var message in messages) {
          final String messageText = message.data['text'];
          final String messageSender = message.data['sender'];
          messageWidget.add(
            MessageBubble(
              text: messageText,
              sender: messageSender,
              isMe: loggedInUser == messageSender,
            ),
          );
        }
        return Expanded(
          child: ListView(
            reverse: true,
            children: messageWidget,
          ),
        );
      },
    );
  }
}
