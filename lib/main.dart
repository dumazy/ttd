import 'package:flutter/material.dart';
import 'package:workshop/word_list.dart';

import 'my_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Icon(Icons.alarm),
            Icon(Icons.alarm),
          ],
        ),
      ),
      body: WordList(),
    );
  }
}
