import 'package:http/http.dart' as http;

import '../env/envConfig.dart';

class BaseApiService {
  Future<String> apiGet(context, String url,
      {Map<String, String> headers}) async {
    var baseApi = EnvConfig.settings(context).baseApi;
    print('get request to: $baseApi$url');
    final response = await http.get('$baseApi$url', headers: headers);
    if (response.statusCode != 200) {
      return '';
    }
    return response.body;
  }
}
