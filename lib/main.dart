import 'package:flutter/material.dart';
import 'package:number_list/core/theme/app_theme.dart';
import 'package:number_list/l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:number_list/features/home/presentation/home_screen.dart';

void main() => runApp(const NumberListApp());

class NumberListApp extends StatelessWidget {
  const NumberListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}

/*
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Card de Total Global
              const GlobalTotalCard(),
              const SizedBox(height: 24),
              const Text(
                "Individual Counters",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                "Tap a card to increment its value",
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 16),
              // Lista de Contadores
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
        ),
      ),
    );
  }
}

class GlobalTotalCard extends StatelessWidget {
  const GlobalTotalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1A262F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF1E3C72), Color(0xFF2A5298)],
              ),
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: const Center(
              child: Column(
                children: [
                  Text(
                    "GLOBAL TOTAL",
                    style: TextStyle(letterSpacing: 1.2, fontSize: 12),
                  ),
                  Text(
                    "1,245",
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ACCUMULATED COUNT",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      "Last updated 2 mins ago",
                      style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text("Reset All"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1A262F),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFF253341),
            child: Text("$index", style: const TextStyle(color: Colors.blue)),
          ),
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
                  "Value: $value",
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline,
              color: Colors.blueGrey,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}*/
