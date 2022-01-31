import 'dart:convert';

import 'package:ecommerce_project/application/API/api/model.dart';
import 'package:ecommerce_project/application/API/api/model_product.dart';
import 'package:http/http.dart' as http;

Future<List<Home_store>> getPosts() async {
  final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    List<Home_store> list = [];
    userJson.map((json) {
      for (var i = 0; i < json.length; i++) {
        list.add(Home_store.fromMap(json['home_store'][i]));
      }
    }).toList();
    return list;
  } else {
    throw Exception('Failed to load');
  }
}

Future<List<Best_seller>> getPostsBestSeller() async {
  final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    List<Best_seller> list = [];
    userJson.map((json) {
      for (var i = 0; i < json['best_seller'].length; i++) {
        list.add(Best_seller.fromMap(json['best_seller'][i]));
      }
    }).toList();
    return list;
  } else {
    throw Exception('Failed to load');
  }
}

// ListTile(
//                       title: Text("ID"),
//                       subtitle: Text("${post.id}"),
//                     ),
//                     ListTile(
//                       title: Text("Body"),
//                       subtitle: Text(post.body),
//                     ),
//                     ListTile(

// class HttpService {
//   Future<List<GetDetails>> getProducts() async {
//     final response = await http.get(
//         Uri.parse('https://shopapi-0575.restdb.io/rest/detai'),
//         headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

//     if (response.statusCode == 200) {
//       final List<dynamic> body = json.decode(response.body);

//       List<GetDetails> posts = body
//           .map(
//             (dynamic item) => GetDetails.fromJson(item),
//           )
//           .toList();
//       return posts;
//     } else {
//       throw Exception('Failed to load');
//     }
//   }
// }
class PostsRepository {
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
/* проверку на null возможно */