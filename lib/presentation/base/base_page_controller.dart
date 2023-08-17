// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/contracts/controller.dart';
import 'package:flutter_boilerplate_getx/core/services/loader/loader_service.dart';
import 'package:flutter_boilerplate_getx/data/models/loader_model.dart';
import 'package:flutter_boilerplate_getx/presentation/base/repository/base_repo.dart';

class BaseController extends Controller with GetTickerProviderStateMixin {
  final BaseRepo repository;

  final loaderService = Get.find<LoaderService>();

  static BaseController to = Get.find<BaseController>();

  RxInt counter = 0.obs;

  RxBool isAuthenticated = false.obs;

  BaseController({
    required this.repository,
  });

  dummyFun(String id) async {
    if (loaderService.getLoaderById(id) != null) {
      return;
    }
    final loader0 = LoaderModel(
      id: id,
      message: 'Base Widget Click me button loader',
      index: 1,
      visible: true,
    );
    final didLoaderAdd = loaderService.addLoader(loader0);
    if (!didLoaderAdd) {
      return;
    }
    await Future.delayed(const Duration(seconds: 3));

    loaderService.removeLoader(loader0);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
