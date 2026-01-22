// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get globalTotal => 'TOTAL GLOBAL';

  @override
  String get accumulatedCount => 'CONTEO ACUMULADO';

  @override
  String get lastUpdated => 'Última actualización hace 2 min';

  @override
  String get resetAll => 'Reiniciar Todo';

  @override
  String get individualCounters => 'Contadores Individuales';

  @override
  String get tapToIncrement => 'Toca una tarjeta para incrementar su valor';

  @override
  String value(int value) {
    return 'Valor: $value';
  }
}
