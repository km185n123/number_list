import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class LoadNumbers extends HomeEvent {}

class IncrementNumber extends HomeEvent {
  final int index;

  const IncrementNumber(this.index);

  @override
  List<Object> get props => [index];
}

class ResetNumbers extends HomeEvent {}
