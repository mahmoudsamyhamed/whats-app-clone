import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blueGrey,
            child: SvgPicture.asset(
              'assets/icons/person_black_36dp.svg',
              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              height: 38,
              width: 38,
            ),
          ),
          trailing: const Text('18:45'),
          title: const Text('Name'),
          subtitle: const Row(
            children: [
              Icon(
                Icons.done_all,
                size: 20,
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                'Last Message',
                style: TextStyle(fontSize: 13),
              ),
            ],
          ),
          onTap: () {},
          splashColor: Colors.grey,
        ),
      ],
    );
  }
}
