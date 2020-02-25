import 'dart:convert';

import '../contracts/hackerNewsItemDetails.dart';
import 'BaseApiService.dart';

class HackerNewsService extends BaseApiService {
  Future<List<int>> fetchTopIds(context) async {
    final response = await this.apiGet(context, 'topstories.json');
    final ids = json.decode(response);
    return ids.cast<int>();
  }

  Future<HackerNewsItemDetails> getDetails(context, int uniqueId) async {
    final response = await this.apiGet(context, 'item/$uniqueId.json');
    return HackerNewsItemDetails.fromRawJson(response);
  }
}
