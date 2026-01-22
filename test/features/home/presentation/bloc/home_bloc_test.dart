import 'package:bloc_test/bloc_test.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:number_list/core/errors/failure.dart';
import 'package:number_list/features/home/domain/entities/number_item.dart';
import 'package:number_list/features/home/domain/usecases/calculate_total_usecase.dart';
import 'package:number_list/features/home/domain/usecases/get_numbers_usecase.dart';
import 'package:number_list/features/home/domain/usecases/increment_number_usecase.dart';
import 'package:number_list/features/home/domain/usecases/reset_numbers_usecase.dart';
import 'package:number_list/features/home/presentation/bloc/home_bloc.dart';
import 'package:number_list/features/home/presentation/bloc/home_event.dart';
import 'package:number_list/features/home/presentation/bloc/home_state.dart';

import 'home_bloc_test.mocks.dart';

@GenerateMocks([
  GetNumbersUseCase,
  IncrementNumberUseCase,
  ResetNumbersUseCase,
  CalculateTotalUseCase,
])
void main() {
  late HomeBloc bloc;
  late MockGetNumbersUseCase mockGetNumbersUseCase;
  late MockIncrementNumberUseCase mockIncrementNumberUseCase;
  late MockResetNumbersUseCase mockResetNumbersUseCase;
  late MockCalculateTotalUseCase mockCalculateTotalUseCase;

  setUp(() {
    provideDummy<Either<Failure, List<NumberItem>>>(
      const Left(CacheFailure('dummy')),
    );

    mockGetNumbersUseCase = MockGetNumbersUseCase();
    mockIncrementNumberUseCase = MockIncrementNumberUseCase();
    mockResetNumbersUseCase = MockResetNumbersUseCase();
    mockCalculateTotalUseCase = MockCalculateTotalUseCase();

    bloc = HomeBloc(
      getNumbersUseCase: mockGetNumbersUseCase,
      incrementNumberUseCase: mockIncrementNumberUseCase,
      resetNumbersUseCase: mockResetNumbersUseCase,
      calculateTotalUseCase: mockCalculateTotalUseCase,
    );
  });

  const tNumberItem = NumberItem(index: 1, value: 0);
  final tNumbers = [tNumberItem];
  const tTotal = 0;

  test('initial state should be HomeLoading', () {
    expect(bloc.state, HomeLoading());
  });

  blocTest<HomeBloc, HomeState>(
    'emits [HomeLoaded] when LoadNumbers is added and success',
    build: () {
      when(mockGetNumbersUseCase.call()).thenAnswer((_) => Right(tNumbers));
      when(mockCalculateTotalUseCase.call(tNumbers)).thenReturn(tTotal);
      return bloc;
    },
    act: (bloc) => bloc.add(LoadNumbers()),
    expect: () => [HomeLoaded(numbers: tNumbers, total: tTotal)],
  );

  blocTest<HomeBloc, HomeState>(
    'emits [HomeError] when LoadNumbers is added and failure',
    build: () {
      when(
        mockGetNumbersUseCase.call(),
      ).thenAnswer((_) => const Left(CacheFailure('Error')));
      return bloc;
    },
    act: (bloc) => bloc.add(LoadNumbers()),
    expect: () => [const HomeError('Error')],
  );
}
