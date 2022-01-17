import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class User {
  int id;
  String name;
  String email;
  String phone;

  User({required this.id, required this.name, required this.email, required this.phone});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}

class Homestore {
  final int id;
  final bool isnew;
  final String title;
  final String subtitle;
  final String picture;
  final bool isbuy;
  
  Homestore(
    {
    required this.id,
    required this.isnew,
    required this.title,
    required this.subtitle,
    required this.picture,
    required this.isbuy,
    }
 );

factory Homestore.fromJson(Map<String, dynamic> json) { 
  return Homestore(
      id: json['id'] as int,
      isnew: json['isnew'] as bool,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      picture: json['picture'] as String,
      isbuy: json['isbuy'] as bool,
    );
}

}
