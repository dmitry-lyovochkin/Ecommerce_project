import 'dart:convert';
import 'dart:io';

import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/http/Models/get_list.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  final client = HttpClient();
  String _response = 'gervfdg';
  void getPosts() async {
    try {
      final response = await http.get(
          Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
          headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});
      var _response = response.body;
    } catch (error) {
      _response = "Error occured : $error";
    } finally {
      throw Exception("gerge");
    }
  }
}
