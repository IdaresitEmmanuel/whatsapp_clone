import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsappclone/presentation/core/theme/dimensions.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key, this.title, this.actions, this.tabBar})
      : super(key: key);
  final String? title;
  final List<Widget>? actions;
  final TabBar? tabBar;
  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Theme.of(context).appBarTheme.backgroundColor,
      child: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Platform.isAndroid || Platform.isIOS
                ? const SizedBox(height: 50.0)
                : const SizedBox.shrink(),
            Container(
              width: double.maxFinite,
              height: 60.0,
              padding: const EdgeInsets.symmetric(
                  horizontal: AppDimensions.pageMargin),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title ?? "",
                      style: TextStyle(
                        color: Theme.of(context).appBarTheme.iconTheme?.color,
                        fontSize: AppDimensions.appBarTitle,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: widget.actions ?? [],
                    )
                  ]),
            ),
            widget.tabBar ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
