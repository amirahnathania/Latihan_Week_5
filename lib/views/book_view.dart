import 'package:flutter/material.dart';
import 'package:Latihan_Week_5/viewmodels/book_viewmodel.dart';
import 'package:provider/provider.dart';

class BookView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jualan Buku"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: context.watch<BookViewmodel>().books.length,
          itemBuilder: (context, index) {
            final book = context.watch<BookViewmodel>().books[index];
            return ListTile(
              title: Text(book.title),
              subtitle: Text(book.author),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<BookViewmodel>().fetchBooks();
        },
        child:  Icon(Icons.download),
      ),
    );
  }
}