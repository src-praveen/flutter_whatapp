import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../model/chat.dart';
import 'common_widgets.dart';

class ChatItem extends StatelessWidget {
  final Chat _chat;

  ChatItem(this._chat);

  String _isTodayMessage(DateTime lastMessage) {
    if (lastMessage.isBefore(DateTime.now()))
      return 'Yesterday';
    else
      return DateFormat.jm().format(lastMessage);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CommonCircleAvatar(_chat.imageUrl),
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(_chat.contactNameOrGroupName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          Spacer(),
          Text(
            DateFormat.jm().format(_chat.lastMessage),
            style: TextStyle(
              color: _chat.unReadMessage > 0 ? Color(0xff00cc3f) : Colors.grey,
            ),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Text(_chat.lastAction),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: _chat.isMuted
                ? Icon(
                    Icons.volume_off,
                    color: Colors.grey,
                  )
                : Container(),
          ),
          _chat.unReadMessage > 0
              ? Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Color(0xff00cc3f),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
