import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_whatapp/ui/chat_screen.dart';
import 'package:flutter_whatapp/ui/status_screen.dart';
import 'package:flutter_whatapp/ui/widgets/calls.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  final List<String> listItems = [];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 500; i++) {
      listItems.add('Item ${i}');
    }

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
            body: NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    floating: true,
                    pinned: true,
                    snap: true,
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
                  )
                ];
              },
              body: TabBarView(
                controller: _tabController,
                children: [
                  Center(
                    child: Text('Camera'),
                  ),
                  ChatScreen(),
                  StatusScreen(),
                  Calls(),
                ],
              ),
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
      initialIndex: 1,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
