import 'package:either_dart/either.dart';
import 'package:number_list/core/errors/failure.dart';
import '../entities/number_item.dart';
import '../repositories/numbers_repository.dart';

class IncrementNumberUseCase {
  final NumbersRepository repository;

  IncrementNumberUseCase(this.repository);

  Either<Failure, List<NumberItem>> call(int index) {
    return repository.incrementNumber(index);
  }
}
