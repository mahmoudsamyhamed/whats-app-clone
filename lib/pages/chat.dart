import 'package:flutter/material.dart';
import 'package:whats_app_clone/widgets/chat_card.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return const ChatCard();
        },
      ),
    );
  }
}
