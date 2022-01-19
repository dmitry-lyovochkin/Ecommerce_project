// import 'dart:convert';
// import 'dart:io';

// import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/http/Models/get_list.dart';
// import 'package:http/http.dart' as http;

// class PostsRepository {
//   Future<List<GetApi>> getPosts() async {
//     final response = await http.get(
//         Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
//         headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});
//     return getApiFromJson(response.body);
//   }
// }

// class ApiClient {
//   final client = HttpClient();

//   Future<List<GetApi>> getPosts() async {
//     final url = http.get(Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
//         headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});
//     final request = await client.getUrl(url);
//     final response = await request.close();
//     final jsonStrings = await response.transform(utf8.decoder).toList();
//     final jsonString = jsonStrings.join();
//     final json = jsonDecode(jsonString) as List<dynamic>;
//     final posts = json
//         .map((dynamic e) => GetApi.fromJson(e as Map<String, dynamic>))
//         .toList();
//     return posts;
//   }
// }
import 'dart:convert';
import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/http/Models/get_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

