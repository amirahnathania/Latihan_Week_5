import 'package:Latihan_Week_5/models/book_model.dart';

// // Define the Book class
// class Book {
//   final String title;
//   final String author;

//   Book({required this.title, required this.author});
// }

class BookService {
  Future<List<Book>> fetchBooks() async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));
    // Return a list of books
    return [
      Book(title: 'Book 1', author: 'Author 1'),
      Book(title: 'Book 2', author: 'Author 2'),
      Book(title: 'Book 3', author: 'Author 3'),
    ];
  }
}