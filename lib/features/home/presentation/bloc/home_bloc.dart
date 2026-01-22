import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/get_numbers_usecase.dart';
import '../../domain/usecases/increment_number_usecase.dart';
import '../../domain/usecases/reset_numbers_usecase.dart';
import '../../domain/usecases/calculate_total_usecase.dart';
import 'package:number_list/features/home/presentation/bloc/home_event.dart';
import 'package:number_list/features/home/presentation/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetNumbersUseCase getNumbersUseCase;
  final IncrementNumberUseCase incrementNumberUseCase;
  final ResetNumbersUseCase resetNumbersUseCase;
  final CalculateTotalUseCase calculateTotalUseCase;

  HomeBloc({
    required this.getNumbersUseCase,
    required this.incrementNumberUseCase,
    required this.resetNumbersUseCase,
    required this.calculateTotalUseCase,
  }) : super(HomeLoading()) {
    on<LoadNumbers>(_onLoadNumbers);
    on<IncrementNumber>(_onIncrementNumber);
    on<ResetNumbers>(_onResetNumbers);
  }

  Future<void> _onLoadNumbers(
    LoadNumbers event,
    Emitter<HomeState> emit,
  ) async {
    final result = getNumbersUseCase.call();
    result.fold(
      (failure) => emit(HomeError(failure.message)),
      (numbers) => emit(
        HomeLoaded(numbers: numbers, total: calculateTotalUseCase(numbers)),
      ),
    );
  }

  Future<void> _onIncrementNumber(
    IncrementNumber event,
    Emitter<HomeState> emit,
  ) async {
    final result = incrementNumberUseCase.call(event.index);
    result.fold(
      (failure) => emit(HomeError(failure.message)),
      (numbers) => emit(
        HomeLoaded(numbers: numbers, total: calculateTotalUseCase(numbers)),
      ),
    );
  }

  Future<void> _onResetNumbers(
    ResetNumbers event,
    Emitter<HomeState> emit,
  ) async {
    final result = resetNumbersUseCase.call();
    result.fold(
      (failure) => emit(HomeError(failure.message)),
      (numbers) => emit(
        HomeLoaded(numbers: numbers, total: calculateTotalUseCase(numbers)),
      ),
    );
  }
}
