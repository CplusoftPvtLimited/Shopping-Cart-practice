import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/view/screens/homeScreen.dart';

import 'controller/cart_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create:(_) => CartController(),
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:  HomeScreen(),
    ),
    );
    }
}
