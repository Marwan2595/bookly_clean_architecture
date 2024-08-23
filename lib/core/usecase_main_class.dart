import 'package:bookly_clean_architecture/core/error_handler.dart';
import 'package:dartz/dartz.dart';

abstract class UseCaseClass<Type, Param> {
  Future<Either<ErrorHandlerClass, Type>> call([Param parameter]);
}
