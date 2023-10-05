import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whats_app_clone/models/chatModel.dart';
import 'package:whats_app_clone/screens/chat_screen.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key, required this.chat});

  final ChatModel chat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blueGrey,
            child: SvgPicture.asset(
              'assets/icons/${chat.icon}',
              colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              height: 38,
              width: 38,
            ),
          ),
          trailing: Text(chat.time),
          title: Text(chat.name),
          subtitle: Row(
            children: [
              const Icon(
                Icons.done_all,
                size: 20,
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                chat.currMsg,
                style: const TextStyle(fontSize: 13),
              ),
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChatScreen(chat: chat),
              ),
            );
          },
          splashColor: Colors.grey,
        ),
      ],
    );
  }
}
