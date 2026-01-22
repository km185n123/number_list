import 'package:either_dart/either.dart';
import 'package:number_list/core/errors/failure.dart';
import '../entities/number_item.dart';

abstract class NumbersRepository {
  Either<Failure, List<NumberItem>> getNumbers();
  Either<Failure, List<NumberItem>> incrementNumber(int index);
  Either<Failure, List<NumberItem>> resetNumbers();
}
