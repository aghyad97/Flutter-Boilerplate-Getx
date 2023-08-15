// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/contracts/controller.dart';
import 'package:flutter_boilerplate_getx/presentation/base/repository/base_repo.dart';

class BaseController extends Controller with GetTickerProviderStateMixin {
  final BaseRepo repository;

  RxInt counter = 0.obs;

  BaseController({
    required this.repository,
  });

  dummyFun() async {
    final userDetails0 = await repository.getUserDetails('');
    userDetails0.fold((left) {}, (right) => {});
  }
}
