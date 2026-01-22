import 'package:equatable/equatable.dart';

class NumberItem extends Equatable {
  final int index;
  final int value;

  const NumberItem({required this.index, required this.value});

  NumberItem incremented() {
    return NumberItem(index: index, value: value + 1);
  }

  @override
  List<Object> get props => [index, value];
}
