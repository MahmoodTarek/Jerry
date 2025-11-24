import 'package:flutter/material.dart';
import 'package:jerry_store/screens/tom_store/tom_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TomStore(),debugShowCheckedModeBanner: false);
  }
}
