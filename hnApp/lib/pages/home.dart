import 'package:flutter/material.dart';

import '../services/HackerNewsService.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> hackerNewsTopPosts = List<int>();

  void _fetchTopPosts(context) async {
    var result = await HackerNewsService().fetchTopIds(context);
    setState(() {
      hackerNewsTopPosts = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (hackerNewsTopPosts.length < 1) {
      _fetchTopPosts(context);
      return Scaffold(
        appBar: AppBar(title: Text("Loading")),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView.builder(
        itemCount: hackerNewsTopPosts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(hackerNewsTopPosts[index].toString()),
          );
        },
      ),
    );
  }
}
