import 'package:flutter/material.dart';
import 'package:whatsappclone/presentation/core/theme/dimensions.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("WhatsApp"),
      //   actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
      // ),
      body: Column(children: [
        Container(
          width: double.maxFinite,
          color: Theme.of(context).appBarTheme.backgroundColor,
          child: Material(
            child: Column(
              children: [
                const SizedBox(height: 50.0),
                Container(
                  width: double.maxFinite,
                  height: 60.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppDimensions.pageMargin),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "WhatsApp",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: AppDimensions.appBarTitle,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            InkResponse(
                              onTap: () {},
                              radius: 20.0,
                              child: Icon(
                                Icons.search,
                                color: Theme.of(context)
                                    .appBarTheme
                                    .iconTheme
                                    ?.color,
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkResponse(
                              onTap: () {},
                              radius: 20.0,
                              child: Icon(
                                Icons.more_vert,
                                color: Theme.of(context)
                                    .appBarTheme
                                    .iconTheme
                                    ?.color,
                              ),
                            ),
                          ],
                        )
                      ]),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
