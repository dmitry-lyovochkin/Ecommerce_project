import 'package:ecommerce_project/features/data/models/details_model.dart';
import 'package:http/http.dart' as http;

class DetailsList {
  Future<List<GetDetails>> getProducts() async {
    final response = await http.get(
        Uri.parse('https://shopapi-0575.restdb.io/rest/detail'),
        headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});
   
    if (response.statusCode == 200) {
      return getDetailsFromJson(response.body);
    } else {
      throw Exception('Failed to load');
    }
  }
}