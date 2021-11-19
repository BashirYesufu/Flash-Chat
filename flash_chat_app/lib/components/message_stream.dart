import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'message_bubble.dart';

class MessageStream extends StatelessWidget {
  const MessageStream({
    Key? key,
    required FirebaseFirestore firestore,
  }) : _firestore = firestore, super(key: key);

  final FirebaseFirestore _firestore;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('messages').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<MessageBubble> messageWidgets = [];
          final messages = snapshot.data!.docs.reversed;
          for (var message in messages) {
            final messageData = message.data()! as Map<String, dynamic>;
            final messageText = messageData['text'];
            final messageSender = messageData['sender'];
            final messageBubble = MessageBubble(text: '$messageText', sender: '$messageSender');
            messageWidgets.add(messageBubble);
          }
          return Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0,),
              children: messageWidgets,
            ),
          );
        }
        return Center(
          child: CircularProgressIndicator(
            backgroundColor: Colors.lightBlueAccent,
          ),
        );
      },
    );
  }
}