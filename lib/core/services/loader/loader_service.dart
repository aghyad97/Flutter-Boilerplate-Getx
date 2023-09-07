// Project imports:
import 'package:flutter_boilerplate_getx/data/models/loader_model.dart';

/// The `LoaderService` class defines methods and properties for managing loaders and their display in
/// an application.

abstract class LoaderService {
  bool get displayLoading;

  void changeLoaderMessage(String id, String newMessage);

  bool addLoader(LoaderModel loader);

  Future<void> removeLoader(LoaderModel loader);

  void updateLoader(LoaderModel loader, [bool restart = false]);

  int getLoaderIndexById(String id);

  LoaderModel? getLoaderById(String id);

  bool isLoading(String id);
}
