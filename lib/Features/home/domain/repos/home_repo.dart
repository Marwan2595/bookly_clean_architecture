import 'package:bookly_clean_architecture/Features/home/domain/entities/book_entity.dart';
import 'package:bookly_clean_architecture/core/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<ErrorHandlerClass, List<BookEntity>>> fetchFeaturedBooks();
  Future<Either<ErrorHandlerClass, List<BookEntity>>> fetchNewestBooks();
}
