// Package imports:
import 'package:either_dart/either.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/data/data_sources/local/prefernces_service.dart';
import 'package:flutter_boilerplate_getx/data/data_sources/remote/http_service.dart';
import 'package:flutter_boilerplate_getx/presentation/base/repository/base_repo.dart';

class BaseRepoImpl implements BaseRepo {
  BaseRepoImpl({
    required this.httpService,
    required this.preferenceService,
  });
  final HttpService httpService;
  final PreferenceService preferenceService;

  @override
  Future<Either<int, String>> getUserDetails(String userId) {
    return Future.value(const Left(0));
  }

  @override
  bool isAuthenticated() {
    return false;
  }
}
