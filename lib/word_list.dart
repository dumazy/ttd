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
  late List<WordPair> wordPairs;

  @override
  void initState() {
    super.initState();
    wordPairs = generateWordPairs().take(200).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: wordPairs.length,
      itemBuilder: (_, index) {
        final pair = wordPairs[index];
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              pair.toString(),
              style: TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
