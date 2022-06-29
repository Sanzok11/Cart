import 'package:flutter/material.dart';
import 'package:providercart/product_list.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CartProvider(),
        child: Builder(builder: (BuildContext context) {
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ProductListScreen(),
          );
        }));
  }
}
