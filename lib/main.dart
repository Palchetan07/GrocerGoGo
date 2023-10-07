import 'package:flutter/material.dart';
import 'package:grocerystoreapp/models/cart_model.dart';
import 'package:provider/provider.dart';

import 'pages/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroScreen(),
      )
    );

  }
}
