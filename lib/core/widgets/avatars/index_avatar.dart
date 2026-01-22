import 'package:flutter/material.dart';

class IndexAvatar extends StatelessWidget {
  final int index;

  const IndexAvatar({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return CircleAvatar(
      backgroundColor: theme.colorScheme.surface.withValues(alpha: 0.15),
      child: Text(
        "$index",
        style: theme.textTheme.bodyMedium?.copyWith(
          color: theme.colorScheme.primary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
