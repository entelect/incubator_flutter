# Step 3
## Get some Data

We are going to be fetching data from `https://hacker-news.firebaseio.com/v0/topstories.json`. This will give us the top stories from Hacker News.

A plugin for http requests available here: https://pub.dev/packages/http.
To install the package add `http: 0.12.0+4` to the `pubspec.yaml`

Set up services to communicate with the API. `BaseApiService` for basic api functionality and `HackerNewsService` for HackerNews specific requests.
Add some test code in the home.dart

##### Success!

## async / await
In the test code I used promise-like syntax to display the data from the API once the service gets the data. But we can use async await to write the code in a cleaner way.


