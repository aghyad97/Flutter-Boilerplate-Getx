import 'package:either_dart/either.dart';

abstract class BaseRepo {
  Future<Either<int, String>> getUserDetails(String userId);
}
