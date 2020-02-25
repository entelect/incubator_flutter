import 'package:flutter/material.dart';
import 'package:hnApp/contracts/hackerNewsItemDetails.dart';
import 'package:hnApp/services/HackerNewsService.dart';

Widget hackerNewsItem(BuildContext context, int uniqueId) {
  return FutureBuilder(
    future: HackerNewsService().getDetails(context, uniqueId),
    builder:
        (BuildContext context, AsyncSnapshot<HackerNewsItemDetails> snapshot) {
      switch (snapshot.connectionState) {
        case ConnectionState.none:
          return new Text('An Error has occurred');
        case ConnectionState.active:
        case ConnectionState.waiting:
          return Center(
              child: Padding(
            child: CircularProgressIndicator(),
            padding: EdgeInsets.all(12),
          ));
        case ConnectionState.done:
          if (snapshot.hasError) {
            return new Text('An Error has occurred');
          }
      }
      return ListTile(
          title: Text(snapshot.data.title),
          leading: Container(
            width: 60,
            height: 60,
            child: Center(child: Text(snapshot.data.score.toString())),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
          ));
    },
  );
}
