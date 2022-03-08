import 'package:ecommerce_project/common/app_theme/app_theme.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ecommerce_project/features/home/presentation/widgets/BottomBar/home_bottombar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: CounterObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: const HomeBottomWidget(),
    );
  }
}
