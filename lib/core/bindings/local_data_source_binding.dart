// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/data/data_sources/local/preferences_service_impl.dart';
import 'package:flutter_boilerplate_getx/data/data_sources/local/prefernces_service.dart';

class LocalSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<PreferenceService>(PreferencesServiceImpl());
  }
}
