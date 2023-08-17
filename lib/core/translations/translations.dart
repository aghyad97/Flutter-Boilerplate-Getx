// Dart imports:
import 'dart:ui';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'en_US.dart';

abstract class AppTranslation extends Translations {
  static Map<String, Map<String, String>> translations = {
    'en_US': enUs,
  };

  static List<Locale> get supportedLocales =>
      AppTranslation.translations.entries
          .map((e) => Locale(e.key.split('_')[0], e.key.split('_')[1]))
          .toList();
}
