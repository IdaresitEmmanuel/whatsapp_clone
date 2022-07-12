import 'package:flutter/material.dart';

class CameraHomePage extends StatefulWidget {
  const CameraHomePage({Key? key}) : super(key: key);

  @override
  State<CameraHomePage> createState() => _CameraHomePageState();
}

class _CameraHomePageState extends State<CameraHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Center(child: Text("Camera")),
    );
  }
}
