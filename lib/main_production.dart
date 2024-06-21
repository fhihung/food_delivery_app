import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/app/app.dart';
import 'package:food_delivery_app/app/storage_service.dart';
import 'package:food_delivery_app/home/bloc/home_bloc.dart';
import 'package:food_delivery_app/home/controllers/home_controller.dart';
import 'package:food_delivery_app/product/bloc/product_bloc.dart';
import 'package:food_delivery_app/product/controllers/product_controller.dart';
import 'package:food_delivery_app/shop/bloc/shop_bloc.dart';
import 'package:food_delivery_app/shop/controller/shop_controller.dart';

void main() {
  bootstrap(() {
    return Future.value(const App());
  });
}

void bootstrap(Future<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  final storageService = StorageService();
  final homeController = HomeController();
  final shopController = ShopController();
  final productController = ProductController();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(homeController, storageService),
        ),
        BlocProvider<ShopBloc>(
          create: (context) => ShopBloc(shopController),
        ),
        BlocProvider<ProductBloc>(
          create: (context) => ProductBloc(productController),
        ),
      ],
      child: await builder(),
    ),
  );
}
