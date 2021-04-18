import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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

  // Widget quoteTemplate(quote) {
  //   // making this into a stateless widget
  //   return QuoteCard(quote: quote);
  // }

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
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}

// class QuoteCard extends StatelessWidget {
//   final Quote quote; // final value of this variable
//   QuoteCard({this.quote}); // making a constructor to take the quote parameter

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               quote.text,
//               style: TextStyle(
//                 fontSize: 18.0,
//                 color: Colors.pink[900],
//               ),
//             ),
//             SizedBox(
//               height: 6.0,
//             ),
//             Text(
//               quote.author,
//               style: TextStyle(fontSize: 14.0, color: Colors.pink[900]),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
