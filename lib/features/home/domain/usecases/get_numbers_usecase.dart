import 'package:either_dart/either.dart';
import 'package:number_list/core/errors/failure.dart';
import '../entities/number_item.dart';
import '../repositories/numbers_repository.dart';

class GetNumbersUseCase {
  final NumbersRepository repository;

  GetNumbersUseCase(this.repository);

  Either<Failure, List<NumberItem>> call() {
    return repository.getNumbers();
  }
}
