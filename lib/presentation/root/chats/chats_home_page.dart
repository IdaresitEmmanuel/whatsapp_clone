import 'package:flutter/material.dart';
import 'package:whatsappclone/presentation/root/chats/widgets/user_tile.dart';

class ChatsHomePage extends StatefulWidget {
  const ChatsHomePage({Key? key}) : super(key: key);

  @override
  State<ChatsHomePage> createState() => _ChatsHomePageState();
}

class _ChatsHomePageState extends State<ChatsHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const UserTile();
        });
  }
}
