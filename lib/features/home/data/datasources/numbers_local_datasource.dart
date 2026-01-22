import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/number_item_model.dart';

abstract class NumbersLocalDataSource {
  List<NumberItemModel> getNumbers();
  List<NumberItemModel> incrementNumber(int index);
  List<NumberItemModel> resetNumbers();
}

class NumbersLocalDataSourceImpl implements NumbersLocalDataSource {
  static const _cacheKey = 'numbers_cache';
  final SharedPreferences prefs;

  NumbersLocalDataSourceImpl(this.prefs);

  @override
  List<NumberItemModel> getNumbers() {
    final jsonString = prefs.getString(_cacheKey);

    if (jsonString == null) {
      final initial = List.generate(
        10,
        (i) => NumberItemModel(index: i + 1, value: 0),
      );
      _save(initial);
      return initial;
    }

    final List decoded = json.decode(jsonString);
    return decoded.map((e) => NumberItemModel.fromJson(e)).toList();
  }

  @override
  List<NumberItemModel> incrementNumber(int index) {
    final numbers = getNumbers();

    final updated = numbers.map((item) {
      if (item.index == index) {
        return NumberItemModel(index: item.index, value: item.value + 1);
      }
      return item;
    }).toList();

    _save(updated);
    return updated;
  }

  @override
  List<NumberItemModel> resetNumbers() {
    final reset = List.generate(
      10,
      (i) => NumberItemModel(index: i + 1, value: 0),
    );
    _save(reset);
    return reset;
  }

  void _save(List<NumberItemModel> numbers) {
    final jsonString = json.encode(numbers.map((e) => e.toJson()).toList());
    prefs.setString(_cacheKey, jsonString);
  }
}
