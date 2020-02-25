import 'package:flutter/material.dart';

import '../services/HackerNewsService.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _testHackerNewsRequest() async {
    var result = await HackerNewsService().fetchTopIds(context);
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Test',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _testHackerNewsRequest,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
