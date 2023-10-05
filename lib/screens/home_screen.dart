import 'package:flutter/material.dart';
import 'package:whats_app_clone/pages/chat.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhysApp'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          PopupMenuButton<String>(
            onSelected: (value) {},
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                  value: 'New group',
                  child: Text('New group'),
                ),
                const PopupMenuItem(
                  value: 'New broadcast',
                  child: Text('New broadcast'),
                ),
                const PopupMenuItem(
                  value: 'Linked devices',
                  child: Text('Linked devices'),
                ),
                const PopupMenuItem(
                  value: 'Starred messages',
                  child: Text('Starred messages'),
                ),
                const PopupMenuItem(
                  value: 'Settings',
                  child: Text('Settings'),
                ),
              ];
            },
            icon: const Icon(Icons.more_vert),
          )
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('CHATS'),
            ),
            Tab(
              child: Text('STATUS'),
            ),
            Tab(
              child: Text('CALLS'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          Text('CAMERA'),
          Chat(),
          Text('STATUS'),
          Text('CALLS'),
        ],
      ),
    );
  }
}
