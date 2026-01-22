import 'package:flutter/material.dart';
import 'package:number_list/core/theme/app_gradients.dart';

class GradientCard extends StatelessWidget {
  final Widget child;

  const GradientCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          gradient: AppGradients.primary,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: child,
      ),
    );
  }
}
