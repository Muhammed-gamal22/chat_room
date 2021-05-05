import 'package:chat_room/widgets/custom_send_button.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static final routeName = "chat_screen";
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Hero(
            tag: "login",
            child: Container(
              height: 70,
              child: Image.asset('assets/images/chat.png'),
            ),
          ),
          title: Text('Chat Room'),
          actions: [
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {},
            ),
          ]),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
               child:ListView(
              )
          ),
          Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15,bottom:10),
                    child: TextField(
                      controller: textEditingController,
                      decoration: InputDecoration(hintText: 'Enter your message'),
                    ),
                  ),
                ),
                SendButton((){}, "Send")
              ],
            ),
        ],
      ),
    );
  }
}
