import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_list/features/home/presentation/bloc/home_bloc.dart';
import 'package:number_list/features/home/presentation/bloc/home_event.dart';
import 'package:number_list/l10n/app_localizations.dart';
import 'package:number_list/core/widgets/avatars/index_avatar.dart';
import 'package:number_list/core/widgets/buttons/icon_circle_button.dart';
import 'package:number_list/core/widgets/cards/base_card.dart';

class CounterItem extends StatelessWidget {
  final String name;
  final int value;
  final int index;

  const CounterItem({
    super.key,
    required this.name,
    required this.value,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          IndexAvatar(index: index),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!.value(value),
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          IconCircleButton(
            icon: Icons.add_circle_outline,
            onPressed: () {
              context.read<HomeBloc>().add(IncrementNumber(index));
            },
          ),
        ],
      ),
    );
  }
}
