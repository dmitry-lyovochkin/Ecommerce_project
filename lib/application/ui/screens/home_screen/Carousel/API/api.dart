import 'dart:io';

class APiClient {
  final _client = HttpClient();
  static const _host = 'https://shopapi-0575.restdb.io/rest/home';
  static const _apiKey = '61ddae2e95cb716ea5ee48e4';

  Future<dynamic> HotSales() async {
    final parser = (dynamic json) {
      return json;
    };
    // final result = _get<dynamic>(
    //   '/main',
    //   parser,
    //   <String, dynamic>{'x-apikey': _apiKey},
    // );
    // return result;
  }
}
