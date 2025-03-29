import 'package:bookly_app_clean_arc/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app_clean_arc/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
