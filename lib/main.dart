import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_whatapp/ui/widgets/calls.dart';

import 'ui/chat_screen.dart';
import 'ui/status_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xff075e55),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Roboto'),
      home: DefaultTabController(
        length: 4,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'WhatsApp',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              actions: [
                IconButton(icon: Icon(Icons.search), onPressed: () {}),
                PopupMenuButton(
                  child: Icon(Icons.more_vert),
                  itemBuilder: (_) => [
                    PopupMenuItem(
                      child: Text('New group'),
                    ),
                    PopupMenuItem(
                      child: Text('New broadcast'),
                    ),
                    PopupMenuItem(
                      child: Text('Whatsapp Web'),
                    ),
                    PopupMenuItem(
                      child: Text('Starred messages'),
                    ),
                    PopupMenuItem(
                      child: Text('Payments'),
                    ),
                    PopupMenuItem(
                      child: Text('Settings'),
                    ),
                  ],
                )
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 2,
                controller: _tabController,
                tabs: [
                  Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'CHARTS',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'STATUS',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      child: Text(
                        'CALLS',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              controller: _tabController,
              children: [
                Text('Camema'),
                ChatScreen(),
                Status(),
                Calls(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 3,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
