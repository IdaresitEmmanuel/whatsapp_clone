import 'package:flutter/material.dart';

class StatusHomePage extends StatefulWidget {
  const StatusHomePage({Key? key}) : super(key: key);

  @override
  State<StatusHomePage> createState() => _StatusHomePageState();
}

class _StatusHomePageState extends State<StatusHomePage> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(child: Text("Status")),
    );
  }
}
