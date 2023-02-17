import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SecondScreen extends StatelessWidget {
  final WordPair pair;
  const SecondScreen({super.key, required this.pair});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(pair.asString),
      ),
    );
  }
}
