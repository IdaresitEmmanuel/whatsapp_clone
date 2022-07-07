import 'package:flutter/material.dart';
import 'package:whatsappclone/presentation/core/theme/theme.dart';
import 'package:whatsappclone/presentation/root/root_page.dart';

class AppWidgets extends StatelessWidget {
  const AppWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      title: "WhatsAppClone",
      home: const RootPage(),
    );
  }
}
