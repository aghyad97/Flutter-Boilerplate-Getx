// Package imports:
import 'package:get/instance_manager.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/bindings/local_data_source_binding.dart';
import 'package:flutter_boilerplate_getx/core/bindings/remote_data_source_binding.dart';
import 'package:flutter_boilerplate_getx/data/data_sources/local/prefernces_service.dart';
import 'package:flutter_boilerplate_getx/data/data_sources/remote/http_service.dart';
import 'package:flutter_boilerplate_getx/presentation/base/repository/base_repo.dart';
import 'package:flutter_boilerplate_getx/presentation/base/repository/base_repo_impl.dart';
import 'base_page_controller.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    LocalSourceBindings().dependencies();
    RemoteSourceBindings().dependencies();
    Get.put<BaseRepo>(BaseRepoImpl(
        httpService: Get.find<HttpService>(),
        preferenceService: Get.find<PreferenceService>()));
    Get.lazyPut(() => BaseController(repository: Get.find<BaseRepo>()));
  }
}
