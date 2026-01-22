import 'package:flutter/material.dart';
import 'package:number_list/features/home/presentation/ui/sections/counters_section.dart';
import 'package:number_list/features/home/presentation/ui/sections/global_total_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              GlobalTotalSection(),
              SizedBox(height: 24),
              CountersSection(),
            ],
          ),
        ),
      ),
    );
  }
}
