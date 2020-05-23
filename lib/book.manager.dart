import 'package:beproductive/books.dart';
import 'package:flutter/material.dart';
import 'books.dart';

class BookManager extends StatefulWidget {
  final String startingBook;
  BookManager({this.startingBook});

  @override
  State<StatefulWidget> createState() {
    return _BookManagerState();
  }
}

class _BookManagerState extends State<BookManager> {
  List<String> _books = [];

  @override
  void initState() {
    _books.add(widget.startingBook);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          child: RaisedButton(
            child: Text('Add Book'),
            color: Theme.of(context).primaryColor,
            onPressed: (){
              setState(() {
                _books.add('Third book');
              });
            },
          ),
        ),
        Books(_books)
      ],
    );
  }
}