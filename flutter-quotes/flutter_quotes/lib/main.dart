import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(
        text: 'Що розум людини може осягнути і в що він може повірити, те він здатний досягти',
        author: 'Наполеон Хілл'
    ),
    Quote(
        text: 'Прагніть не до успіху, а до цінностей, які він дає',
        author: 'Альберт Айнштайн'
    ),
    Quote(
        text: 'Своїм успіхом я зобов’язана тому, що ніколи не виправдовувалася і не приймала виправдань від інших',
        author: ' Флоренс Найтінгейл'
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Цитати'),
        centerTitle: true,
        backgroundColor: Colors.green[800],
      ),
      body: Center(
        child: Column(
          children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
          )).toList(),
        ),
      ),
    );
  }
}