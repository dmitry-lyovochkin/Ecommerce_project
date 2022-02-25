import 'dart:convert';

import 'package:ecommerce_project/application/services/API/model_cart.dart';
import 'package:ecommerce_project/application/services/API/model_store.dart';
import 'package:ecommerce_project/application/services/API/model_details.dart';
import 'package:http/http.dart' as http;

Future<List<Homestore>> getPosts() async {
  final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    List<Homestore> list = [];
    userJson.map((json) {
      for (var i = 0; i < json.length; i++) {
        list.add(Homestore.fromMap(json['home_store'][i]));
      }
    }).toList();
    return list;
  } else {
    throw Exception('Failed to load');
  }
}

Future<List<Bestseller>> getPostsBestSeller() async {
  final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/home'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    List<Bestseller> list = [];
    userJson.map((json) {
      for (var i = 0; i < json['best_seller'].length; i++) {
        list.add(Bestseller.fromMap(json['best_seller'][i]));
      }
    }).toList();
    return list;
  } else {
    throw Exception('Failed to load');
  }
}

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

class CartList {
  Future<List<Basket>> getCarts() async {
    final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/cart'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (response.statusCode == 200) {
      final List<dynamic> userJson = json.decode(response.body);
      List<Basket> list = [];
      userJson.map((json) {
        for (var i = 0; i < json['basket'].length; i++) {
          list.add(Basket.fromMap(json['basket'][i]));
        }
      }).toList();
      return list;
    } else {
      throw Exception('Failed to load');
    }
  }
}

class CartMainList {
  Future<List<GetCartItems>> getMainCarts() async {
    final response = await http.get(
      Uri.parse('https://shopapi-0575.restdb.io/rest/cart'),
      headers: {'x-apikey': '61ddae2e95cb716ea5ee48e4'});

    if (response.statusCode == 200) {
      final List<dynamic> userJson = json.decode(response.body);
      List<GetCartItems> listMain = [];
      userJson.map((json) {
        for (var i = 0; i < json['basket'].length; i++) {
          listMain.add(GetCartItems.fromMap(json['basket'][i]));
        }
      }).toList();
      return listMain;
    } else {
      throw Exception('Failed to load');
    }
  }
}

