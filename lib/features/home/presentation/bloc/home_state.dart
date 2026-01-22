import 'package:equatable/equatable.dart';
import '../../domain/entities/number_item.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<NumberItem> numbers;
  final int total;

  const HomeLoaded({required this.numbers, required this.total});

  @override
  List<Object> get props => [numbers, total];
}

class HomeError extends HomeState {
  final String message;

  const HomeError(this.message);

  @override
  List<Object> get props => [message];
}
