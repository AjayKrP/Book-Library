import 'package:flutter/material.dart';

class Books extends StatelessWidget{
  final List<String> books;
  Books(this.books) {}
  @override
  Widget build(BuildContext context) {
    return Column(
        children:
        books.map((element) => Card(
          child: Column(
            children: [
              Image.asset('assets/books.jpg'),
              Text(element),
            ],
          ),
        )).toList()
    );
  }

}