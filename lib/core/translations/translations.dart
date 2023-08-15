// Project imports:
import 'dart:ui';

import 'package:get/get.dart';

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
