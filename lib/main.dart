import 'package:flutter/material.dart';
import 'package:neobis_flutter_figma/features/shop_app/presentation/pages/home_page.dart';
part'config/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _theme(),
      debugShowCheckedModeBanner: false,
      home:const  HomeScreen(),
    );
  }
}