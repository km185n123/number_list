import '../entities/number_item.dart';

class CalculateTotalUseCase {
  int call(List<NumberItem> numbers) {
    return numbers.fold(0, (total, item) => total + item.value);
  }
}
