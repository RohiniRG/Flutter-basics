import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // List<String> quotes = [
  //   'Be yourself, everyone else is already taken.',
  //   'I have nothing to declare except my genius.',
  //   'The truth is rarely pure and never simple.'
  // ];

  List<Quote> quotes = [
    Quote(
        author: 'Ocar Wilde',
        text: 'Be yourself, everyone else is already taken'),
    Quote(
        author: 'Ocar Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Ocar Wilde', text: 'The truth is rarely pure and never simple')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: quotes
            .map((quote) => Text(
                  '${quote.text} - ${quote.author}',
                  style: TextStyle(color: Colors.pink[100]),
                ))
            .toList(),
      ),
    );
  }
}
