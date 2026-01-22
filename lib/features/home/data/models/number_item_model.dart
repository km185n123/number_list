import '../../domain/entities/number_item.dart';

class NumberItemModel extends NumberItem {
  const NumberItemModel({required super.index, required super.value});

  factory NumberItemModel.fromJson(Map<String, dynamic> json) {
    return NumberItemModel(index: json['index'], value: json['value']);
  }

  Map<String, dynamic> toJson() {
    return {'index': index, 'value': value};
  }
}
