// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/services/loader/loader_service.dart';
import 'package:flutter_boilerplate_getx/core/services/loader/loader_service_impl.dart';

class LoaderServiceBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<LoaderService>(LoaderServiceImpl());
  }
}
