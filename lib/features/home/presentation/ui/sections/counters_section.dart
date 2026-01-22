import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_list/core/widgets/labels/section_title.dart';
import 'package:number_list/features/home/presentation/bloc/home_bloc.dart';
import 'package:number_list/features/home/presentation/bloc/home_state.dart';
import '../widgets/counter_item.dart';
import 'package:number_list/l10n/app_localizations.dart';

class CountersSection extends StatelessWidget {
  const CountersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            title: AppLocalizations.of(context)!.individualCounters,
            subtitle: AppLocalizations.of(context)!.tapToIncrement,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is HomeLoaded) {
                  return ListView.builder(
                    itemCount: state.numbers.length,
                    itemBuilder: (context, index) {
                      final item = state.numbers[index];
                      // Display index + 1 for UI friendliness if desired, or item.index
                      return CounterItem(
                        name:
                            "Counter ${item.index.toString().padLeft(2, '0')}",
                        value: item.value,
                        index: item.index,
                      );
                    },
                  );
                } else if (state is HomeError) {
                  return Center(child: Text(state.message));
                }
                return const SizedBox.shrink();
              },
            ),
          ),
        ],
      ),
    );
  }
}
