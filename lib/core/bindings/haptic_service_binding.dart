// Package imports:
import 'package:flutter_boilerplate_getx/core/services/haptic/haptic_service.dart';
import 'package:flutter_boilerplate_getx/core/services/haptic/haptic_service_impl.dart';
import 'package:get/get.dart';

// Project imports:

class HapticServiceBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<HapticService>(HapticServiceImpl());
  }
}
