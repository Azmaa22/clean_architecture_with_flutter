import 'package:clean_architecture_with_flutter/src/core/error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUseCase<T> {
  Future<Either<Failure, T>> call();
}
