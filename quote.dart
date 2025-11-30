import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_widget.dart';

void main() {
  runApp(const StateQuote());
}

class StateQuote extends StatefulWidget {
  const StateQuote({super.key});

  @override
  State<StateQuote> createState() => _StateQuoteState();
}

class _StateQuoteState extends State<StateQuote> {
  List<Quote> quotes = [
    Quote(author: 'Mclaren Otieno', text: 'kwni sisi ni wanawake'),
    Quote(author: 'Mbugua Kimani', text: 'Ongeza supu kwa hio waru'),
    Quote(author: 'Mutua Kilonzo', text: 'make nyour mbalens mblound'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.amberAccent,
        ),

        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: quotes.map((quote) => Quotewidget(quote: quote)).toList(),
          ),
        ),
      ),
    );
  }
}
