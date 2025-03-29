import 'package:bookly_app_clean_arc/Features/home/domain/entites/book_entity.dart';

abstract class HomeRepo {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}
