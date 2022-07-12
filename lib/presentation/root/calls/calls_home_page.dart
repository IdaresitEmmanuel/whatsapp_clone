import 'package:flutter/material.dart';

class CallsHomePage extends StatefulWidget {
  const CallsHomePage({Key? key}) : super(key: key);

  @override
  State<CallsHomePage> createState() => _CallsHomePageState();
}

class _CallsHomePageState extends State<CallsHomePage> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(child: Text("Calls")),
    );
  }
}
