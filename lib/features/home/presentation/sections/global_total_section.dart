import 'package:flutter/material.dart';
import 'package:number_list/core/widgets/buttons/primary_button.dart';
import 'package:number_list/core/widgets/cards/base_card.dart';
import 'package:number_list/core/widgets/cards/gradient_card.dart';

class GlobalTotalSection extends StatelessWidget {
  const GlobalTotalSection({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    return BaseCard(
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          GradientCard(
            child: Column(
              children: [
                Text("GLOBAL TOTAL", style: textTheme.labelSmall),
                Text(
                  "1,245",
                  style: textTheme.displayLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ACCUMULATED COUNT",
                      style: textTheme.labelSmall?.copyWith(
                        color: colors.onSurfaceVariant,
                      ),
                    ),
                    Text(
                      "Last updated 2 mins ago",
                      style: textTheme.labelSmall?.copyWith(
                        color: colors.outline,
                      ),
                    ),
                  ],
                ),
                PrimaryButton(label: "Reset All", onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
