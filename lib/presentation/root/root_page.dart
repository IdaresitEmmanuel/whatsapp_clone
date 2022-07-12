import 'package:flutter/material.dart';
import 'package:whatsappclone/presentation/core/widgets/app_bar.dart';
import 'package:whatsappclone/presentation/root/calls/calls_home_page.dart';
import 'package:whatsappclone/presentation/root/camera/camera_home_page.dart';
import 'package:whatsappclone/presentation/root/chats/chats_home_page.dart';
import 'package:whatsappclone/presentation/root/status/status_home_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        MyAppBar(
          title: "Whatsapp",
          actions: [
            InkResponse(
              onTap: () {},
              radius: 20.0,
              child: Icon(
                Icons.search,
                color: Theme.of(context).appBarTheme.iconTheme?.color,
              ),
            ),
            const SizedBox(width: 10),
            InkResponse(
              onTap: () {},
              radius: 20.0,
              child: Icon(
                Icons.more_vert,
                color: Theme.of(context).appBarTheme.iconTheme?.color,
              ),
            ),
          ],
          tabBar: TabBar(
              // onTap: (position) {},
              isScrollable: true,
              controller: _tabController,
              tabs: const [
                Tab(icon: Icon(Icons.camera_alt_rounded)),
                Tab(text: "CHATS"),
                Tab(text: "STATUS"),
                Tab(text: "CALLS"),
              ]),
        ),
        Expanded(
            child: TabBarView(controller: _tabController, children: const [
          CameraHomePage(),
          ChatsHomePage(),
          StatusHomePage(),
          CallsHomePage()
        ]))
      ]),
    );
  }
}
