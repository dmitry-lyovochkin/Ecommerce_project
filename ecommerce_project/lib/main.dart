import 'package:ecommerce_project/common/app_theme/app_theme.dart';
import 'package:ecommerce_project/core/blocs/blocs_observer.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:ecommerce_project/features/cart/presentation/bloc/cart_event.dart';
import 'package:ecommerce_project/features/home/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_project/features/home/presentation/bloc/home_event.dart';
import 'package:ecommerce_project/features/home/presentation/widgets/BottomBar/home_bottombar_widget.dart';
import 'package:ecommerce_project/features/product/presentation/bloc/product_bloc.dart';
import 'package:ecommerce_project/features/product/presentation/bloc/product_event.dart';
import 'package:ecommerce_project/locator_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce_project/locator_service.dart' as depinjections;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await depinjections.initializeDependencies();
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: BlocsObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CartBloc>(
          create: (context) => injection<CartBloc>()..add(const CartLoadEvent()),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => injection<HomeBloc>()..add(const HomeLoadEvent()),
        ),
        BlocProvider<ProductBloc>(
          create: (context) => injection<ProductBloc>()..add(const ProductLoadEvent()),
        ),
      ],
      child: MaterialApp(
        theme: AppTheme.light,
        debugShowCheckedModeBanner: false,
        home: const HomeBottomWidget(),
      )
    );
  }
}

