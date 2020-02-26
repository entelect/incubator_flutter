# Step 4
## We have the Data, now we need to display it

Our first API call returned a list of integers, which are the uniqueId numbers of Hacker News posts. Normally I would prefer to display objects, but in this situation I will be passing the uniqueId to the list item and let the list item make the API call to get the details for each item. This is probably not the best solution, but will work for this sample app.

First let us refactor the home page, making it a bit easier to understand.

Then we can start displaying the uniqueId number in a list.

## First Widget

Here is an example of a request to get an item's details: https://hacker-news.firebaseio.com/v0/item/22391341.json

Create the dart `itemDetails` contract. https://app.quicktype.io/ has a great online app that can convert json into Dart objects

_When testing the home page out I realised that the `kids` property was not always sent back, causing a null exception. So I changed the generated contract to handle it being null.

