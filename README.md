# Step 4
## We have the Data, now we need to display it

Our first API call returned a list of integers, which are the uniqueId numbers of Hacker News posts. Normally I would prefer to display objects, but in this situation I will be passing the uniqueId to the list item and let the list item make the API call to get the details for each item. This is probably not the best solution, but will work for this sample app.

First let us refactor the home page, making it a bit easier to understand. Remove the `counter` property and `incrementCounter()` method that was added when you created the project. Remove the `Center` widget and the `FloatingActionButton`. 

Then we can start displaying the uniqueId number in a list. Add a `ListView` to the body and return a list in `itembuilder` populated by the API call to Hacker News Service. This allows the data to be lazy loaded Refer to [Write your first Flutter app](https://flutter.dev/docs/get-started/codelab) codelab to see how to use ListView. You can add a check to see if the list is empty then show a loading screen.

## First Widget

Here is an example of a request to get an item's details: https://hacker-news.firebaseio.com/v0/item/22391341.json

Create the dart `itemDetails` contract. https://app.quicktype.io/ has a great online app that can convert json into Dart objects.

_When testing the home page out I realised that the `kids` property was not always sent back from the HackerNews API, causing a null exception in the factory. So I changed the generated contract to handle it being null._

From `kids: List<int>.from(json["kids"].map((x) => x))`

to: `kids: json["kids"] != null ? List<int>.from(json["kids"].map((x) => x)) : List<int>(),`

Create a new `hackerNewsItem` widget that the ListView can build. _Tip_ User [FutureBuilder](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html) Widget in this case. Remember to check connectionstate and for any errors that the request returns to show a progess spinner and know when the spinner should stop or when to show errors.

We are using [ListTile](https://api.flutter.dev/flutter/material/ListTile-class.html) Widget to populate the list.