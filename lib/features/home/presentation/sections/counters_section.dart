import 'package:flutter/material.dart';
import 'package:number_list/core/widgets/labels/section_title.dart';
import '../widgets/counter_item.dart';

class CountersSection extends StatelessWidget {
  const CountersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            title: "Individual Counters",
            subtitle: "Tap a card to increment its value",
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
