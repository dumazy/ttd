import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WordList extends StatefulWidget {
  const WordList({super.key});

  @override
  State<WordList> createState() => _WordListState();
}

class _WordListState extends State<WordList> {
  late WordPair wordPair;

  @override
  void initState() {
    super.initState();
    wordPair = WordPair.random();
  }

  @override
  Widget build(BuildContext context) {
    print('wordPair: $wordPair');
    return Center(
      child: ElevatedButton(
        child: Text(
          wordPair.asPascalCase,
          style: TextStyle(fontSize: 60),
        ),
        onPressed: () {
          setState(() {
            wordPair = WordPair.random();
          });
        },
      ),
    );
  }
}
