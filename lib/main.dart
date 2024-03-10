import 'package:flutter/material.dart';
import 'package:lab10_app_126/page/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PK SHOP',
      theme: ThemeData(
      ),
      home: const LoginScreen(),
    );
  }
}
