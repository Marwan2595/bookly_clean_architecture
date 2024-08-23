import 'package:bookly_clean_architecture/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_architecture/Features/home/domain/repos/home_repo.dart';
import 'package:bookly_clean_architecture/core/error_handler.dart';
import 'package:bookly_clean_architecture/core/usecase_main_class.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCaseClass<List<BookEntity>, void> {
  final HomeRepo homeRepo;
  FetchNewestBooksUseCase(this.homeRepo);

  @override
  Future<Either<ErrorHandlerClass, List<BookEntity>>> call(
      [void parameter]) async {
    //Here you should make any other logic you will need before making the API call
    //I don't need any logic here
    return await homeRepo.fetchNewestBooks();
  }
}
