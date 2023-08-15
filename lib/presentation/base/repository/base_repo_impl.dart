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
  getUserDetails(String userId) {
    // TODO: implement getUserDetails
    return 0;
  }
}
