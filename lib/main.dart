import 'package:final_ecommerce/prividers/CartProvider.dart';
import 'package:final_ecommerce/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(
              value: CartProvider())
        ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: HomeScreen(),
    ),
    );
  }
}

