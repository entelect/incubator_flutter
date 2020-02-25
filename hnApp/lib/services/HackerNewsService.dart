import 'dart:convert';

import 'BaseApiService.dart';

class HackerNewsService extends BaseApiService {
  Future<List<int>> fetchTopIds(context) async {
    final response = await this.apiGet(context, 'topstories.json');
    final ids = json.decode(response);
    return ids.cast<int>();
  }
}
