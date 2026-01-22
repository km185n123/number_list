import 'package:either_dart/either.dart';
import 'package:number_list/core/errors/failure.dart';
import '../entities/number_item.dart';
import '../repositories/numbers_repository.dart';

class ResetNumbersUseCase {
  final NumbersRepository repository;

  ResetNumbersUseCase(this.repository);

  Either<Failure, List<NumberItem>> call() {
    return repository.resetNumbers();
  }
}
