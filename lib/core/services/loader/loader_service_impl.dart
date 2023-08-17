// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/extensions/list.dart';
import 'package:flutter_boilerplate_getx/core/services/loader/loader_service.dart';
import 'package:flutter_boilerplate_getx/data/models/loader_model.dart';

/// The `LoaderServiceImpl` class is an implementation of the `LoaderService` interface that manages a
/// list of `LoaderModel` objects and provides methods for adding, removing, and updating loaders.

class LoaderServiceImpl implements LoaderService {
  final RxList<LoaderModel> _loaders = <LoaderModel>[].obs;

  List<LoaderModel> get loaders => _loaders;

  @override
  bool addLoader(LoaderModel loader) {
    if (loaders.contains(loader) ||
        loaders.where((element) => element.id == loader.id).isNotEmpty) {
      return false;
    }
    _loaders.add(loader);
    return true;
  }

  @override
  void changeLoaderMessage(String id, String newMessage) {
    int loadersIndex = getLoaderIndexById(id);
    if (loadersIndex < 0) return;
    LoaderModel loader = LoaderModel.clone(_loaders[loadersIndex]);
    loader.message = newMessage;
    _loaders[loadersIndex] = loader;
  }

  @override
  bool get displayLoading => loaders.any((element) => element.visible);

  @override
  int getLoaderIndexById(String id) =>
      loaders.indexWhere((element) => element.id == id);

  @override
  Future<void> removeLoader(LoaderModel loader) async {
    if (!loaders.contains(loader)) {
      return;
    }
    _loaders.removeWhere((element) => element.id == loader.id);
  }

  @override
  void updateLoader(LoaderModel loader, [bool restart = false]) {
    if (!loaders.contains(loader)) {
      return;
    }
    int loaderIndex = getLoaderIndexById(loader.id);
    if (loaderIndex < 0) return;
    if (_loaders.tryGet(loaderIndex) != null) {
      _loaders[loaderIndex] = loader;
    }
  }

  @override
  LoaderModel? getLoaderById(String id) =>
      loaders.firstWhereOrNull((element) => element.id == id);
}
