import 'package:ecommerce/models/cart.dart';
import 'package:ecommerce/pages/interpage.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
debugShowCheckedModeBanner: false,
home: InterPage(),

      ),
      );
      
  }
  }



  