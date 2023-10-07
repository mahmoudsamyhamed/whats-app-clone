import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:whats_app_clone/models/chatModel.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    super.key,
    required this.chat,
  });

  final ChatModel chat;

  @override
  State<ChatScreen> createState() {
    return _ChatScreen();
  }
}

class _ChatScreen extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final currChat = widget.chat;

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        titleSpacing: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_back,
                size: 24,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blueGrey,
                child: SvgPicture.asset(
                  'assets/icons/${currChat.icon}',
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  height: 36,
                  width: 36,
                ),
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currChat.name,
                  style: const TextStyle(
                    fontSize: 18.5,
                  ),
                ),
                const Text(
                  'Last Seen at ...',
                  style: TextStyle(fontSize: 12.5),
                ),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return (!currChat.isGroup)
                  ? [
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('View contact'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('Media,links,and docs'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('Search'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('Mute notifications'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('Disappearing messages'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('Wallpaper'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('More'),
                      ),
                    ]
                  : [
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('Group info'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('Group media'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('Search'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('Mute notifications'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('Disappearing messages'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('Wallpaper'),
                      ),
                      PopupMenuItem(
                        onTap: () {},
                        child: const Text('More'),
                      ),
                    ];
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
