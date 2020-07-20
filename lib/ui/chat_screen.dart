import 'package:flutter/material.dart';

import '../dummy_data.dart';
import 'widgets/chat_item.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              ChatItem(CHATS[index]),
              Divider(
                color: Colors.black26,
                thickness: 0.4,
                indent: 80,
              ),
            ],
          );
        },
        itemCount: CHATS.length,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff00cc3f),
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
    );
  }
}
