class NumberItem {
  final int index;
  final int value;

  const NumberItem({required this.index, required this.value});

  NumberItem incremented() {
    return NumberItem(index: index, value: value + 1);
  }
}
