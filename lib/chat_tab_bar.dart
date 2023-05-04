import 'package:flutter/material.dart';
import 'package:nppd_care/chat_page.dart';

import 'package:nppd_care/files_page.dart';
import 'package:nppd_care/lifecycle_page.dart';

class ChatTabBarPage extends StatefulWidget {
  const ChatTabBarPage({Key? key}) : super(key: key);

  @override
  State<ChatTabBarPage> createState() => _ChatTabBarPagePageState();
}

class _ChatTabBarPagePageState extends State<ChatTabBarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Weight loss program for new mothers",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.location_on_outlined,
                color: Colors.black,
                size: 20,
              ),
            )
          ],
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 0.2, color: Colors.black),
                ),
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: 'Chat',
                  ),
                  Tab(
                    text: 'Files',
                  ),
                  Tab(
                    text: 'Lifecycle',
                  ),
                ],
                labelColor: Colors.black,
                dividerColor: Colors.black,
                indicatorColor: Colors.transparent,
              ),
            ),
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            ChatPage(),
            FilesPage(),
            LifeCyclePage(),
          ],
        ),
      ),
    );
  }
}
