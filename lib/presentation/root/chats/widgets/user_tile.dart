import 'package:flutter/material.dart';
import 'package:whatsappclone/presentation/core/theme/colors.dart';

class UserTile extends StatefulWidget {
  const UserTile({Key? key}) : super(key: key);

  @override
  State<UserTile> createState() => _UserTileState();
}

class _UserTileState extends State<UserTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: CircleAvatar(
        radius: 20.0,
        backgroundColor: Colors.transparent,
        backgroundImage:
            Image.asset("assets/images/default_user_image.png").image,
      ),
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Expanded(
          child: Text(
            "Emmanuel",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          "12:38 PM",
          style: TextStyle(
              fontSize: 10.0, color: Theme.of(context).primaryIconTheme.color),
        ),
      ]),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text("This is very funny!😂 I'm so right indeed",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14.0)),
          ),
          CircleAvatar(
            radius: 8,
            backgroundColor: Theme.of(context).primaryIconTheme.color,
            child: const Text("2",
                style: TextStyle(fontSize: 10.0, color: AppColors.white)),
          )
        ],
      ),
    );
  }
}
