import 'package:flutter/material.dart';
import 'package:jerry_store/screens/epsiode/EpisodeScreen.dart';
import 'package:jerry_store/screens/jerry_store/tom_store.dart';
import 'package:jerry_store/screens/profile/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: EpisodeScreen(),debugShowCheckedModeBanner: false);
  }
}
