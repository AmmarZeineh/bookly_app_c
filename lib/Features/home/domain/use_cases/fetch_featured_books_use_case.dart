import 'package:bookly_app_clean_arc/Features/home/domain/entites/book_entity.dart';
import 'package:bookly_app_clean_arc/Features/home/domain/repos/home_repo.dart';
import 'package:bookly_app_clean_arc/core/errors/failure.dart';
import 'package:bookly_app_clean_arc/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, void> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> call([void params]) async {
    return await homeRepo.fetchFeaturedBooks();
  }
}
