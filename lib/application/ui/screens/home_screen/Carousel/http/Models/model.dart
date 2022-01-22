

import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/http/Models/get_list.dart';
// import 'package:ecommerce_project/application/ui/screens/home_screen/Carousel/http/get_http.dart';
import 'package:flutter/material.dart';

class WidgetModel extends ChangeNotifier {
  // final apiClient = ApiClient();
  var _posts = <HomeStore>[];
  List<HomeStore> get posts => _posts;

  Future<void> reloadPosts() async {
    // final posts = await apiClient.getPosts();
    _posts += posts;
    notifyListeners();
  }

  void createPosts() {}
}

class ModelProvider extends InheritedNotifier {
  final WidgetModel model;
  const ModelProvider({Key? key, required this.model, required Widget child})
      : super(key: key, notifier: model, child: child);

  static ModelProvider? watch(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ModelProvider>();
  }

  static ModelProvider? read(BuildContext context) {
    final widget = context
        .getElementForInheritedWidgetOfExactType<ModelProvider>()
        ?.widget;
    return widget is ModelProvider ? widget : null;
  }
}
