import 'package:flutter/material.dart';
import 'quote_card.dart';
import './quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList() ,
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Osca Wilde',text:'Be Yourself; everyone is already taken'),
    Quote(author: 'Osca Wilde',text:'I have nothing to declare except my genius'),
    Quote(author: 'Osca Wilde',text:
    'the Truth is rarely pure and bever simple'),
  ];
   


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}

