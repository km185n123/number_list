import 'package:either_dart/either.dart';
import 'package:number_list/core/errors/failure.dart';
import '../../domain/entities/number_item.dart';
import '../../domain/repositories/numbers_repository.dart';
import '../datasources/numbers_local_datasource.dart';

class NumbersRepositoryImpl implements NumbersRepository {
  final NumbersLocalDataSource localDataSource;

  NumbersRepositoryImpl(this.localDataSource);

  @override
  Either<Failure, List<NumberItem>> getNumbers() {
    try {
      return Right(localDataSource.getNumbers());
    } catch (e) {
      return const Left(CacheFailure('Error loading numbers'));
    }
  }

  @override
  Either<Failure, List<NumberItem>> incrementNumber(int index) {
    try {
      return Right(localDataSource.incrementNumber(index));
    } catch (e) {
      return const Left(CacheFailure('Error incrementing number'));
    }
  }

  @override
  Either<Failure, List<NumberItem>> resetNumbers() {
    try {
      return Right(localDataSource.resetNumbers());
    } catch (e) {
      return const Left(CacheFailure('Error resetting numbers'));
    }
  }
}
