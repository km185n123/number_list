import 'package:flutter/material.dart';
import 'package:number_list/core/widgets/labels/section_title.dart';
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
            child: ListView(
              children: const [
                CounterItem(name: "Counter 01", value: 42, index: 1),
                CounterItem(name: "Counter 02", value: 18, index: 2),
                CounterItem(name: "Counter 03", value: 124, index: 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
