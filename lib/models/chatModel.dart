import 'package:uuid/uuid.dart';

const uuid = Uuid();

class ChatModel {
  ChatModel({
    required this.name,
    required this.currMsg,
    required this.icon,
    required this.time,
    this.isGroup = false,
  }) : id = uuid.v4();

  final String name;
  final String id;
  final String currMsg;
  final String time;
  final String icon;
  final bool isGroup;
}
