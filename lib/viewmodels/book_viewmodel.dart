import 'package:flutter/foundation.dart';
import 'package:Latihan_Week_5/models/book_model.dart';
import 'package:Latihan_Week_5/services/book_service.dart';

class BookViewmodel extends ChangeNotifier{
  final BookService _bookService = BookService();
  List<Book> _books = [
    Book(title: "title", author: "author")
  ];

  List<Book> get books => _books;

  Future<void> fetchBooks() async{
    _books = await _bookService.fetchBooks();
    notifyListeners();

  }

}