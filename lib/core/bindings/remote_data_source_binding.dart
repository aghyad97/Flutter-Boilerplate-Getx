// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/data/data_sources/remote/http_service.dart';
import 'package:flutter_boilerplate_getx/data/data_sources/remote/http_service_impl.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<HttpService>(HttpServiceImpl());
  }
}
