import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SecondScreen extends StatefulWidget {
  final WordPair pair;
  const SecondScreen({super.key, required this.pair});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  Color color = Colors.blue;

  void changeColor() {
    setState(() {
      color = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: Theme(
        data: ThemeData(primarySwatch: Colors.green),
        child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.purple,
          ),
          body: Center(
              child: GestureDetector(
            onTap: changeColor,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              color: color,
              width: 200,
              height: 200,
            ),
          )),
        ),
      ),
    );
  }
}
