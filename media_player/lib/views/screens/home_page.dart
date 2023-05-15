import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> with SingleTickerProviderStateMixin {
  late TabController tabController;

  List<Map<String, dynamic>> Listofpage = [
    {
      'title': 'Home',
      'icon': Icon(Icons.home),
      'body': Center(child: Text("first"),),
    },
    {
      'title': 'Call',
      'icon': Icon(Icons.call),
      'body': Center(child: Text("second"),),
    },
    {
      'title': 'Chats',
      'icon': Icon(Icons.message),
      'body': Center(child: Text("third"),)
    },
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: Listofpage.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Media Player"),
        bottom: TabBar(
          controller: tabController,
          tabs: [
            ...Listofpage.map((e) => Tab(
                  icon: e['icon'],
                  text: e['title'],
                )).toList(),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: Listofpage.map<Widget>((e) => e['body']).toList(),
      ),
    );
  }
}
