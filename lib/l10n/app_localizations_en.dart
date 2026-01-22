// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get globalTotal => 'GLOBAL TOTAL';

  @override
  String get accumulatedCount => 'ACCUMULATED COUNT';

  @override
  String get lastUpdated => 'Last updated 2 mins ago';

  @override
  String get resetAll => 'Reset All';

  @override
  String get individualCounters => 'Individual Counters';

  @override
  String get tapToIncrement => 'Tap a card to increment its value';

  @override
  String value(int value) {
    return 'Value: $value';
  }
}
