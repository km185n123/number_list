// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:number_list/features/home/domain/entities/number_item.dart';
import 'package:number_list/features/home/presentation/bloc/home_bloc.dart';
import 'package:number_list/features/home/presentation/bloc/home_event.dart';
import 'package:number_list/features/home/presentation/bloc/home_state.dart';
import 'package:number_list/main.dart';

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

void main() {
  late MockHomeBloc mockHomeBloc;

  setUp(() {
    mockHomeBloc = MockHomeBloc();
  });

  testWidgets('Core localizations and BLoC integration smoke test', (
    WidgetTester tester,
  ) async {
    // Stub the state
    when(() => mockHomeBloc.state).thenReturn(
      const HomeLoaded(numbers: [NumberItem(index: 1, value: 0)], total: 0),
    );

    // Build our app and trigger a frame.
    await tester.pumpWidget(NumberListApp(homeBloc: mockHomeBloc));
    await tester.pumpAndSettle();

    // Verify that our localized texts are present.
    expect(find.text('GLOBAL TOTAL'), findsOneWidget);
    expect(find.text('Individual Counters'), findsOneWidget);
    expect(find.text('Reset All'), findsOneWidget);
  });
}
