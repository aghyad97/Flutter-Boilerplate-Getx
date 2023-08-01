
import 'package:flutter_boilerplate_getx/domain/entities/user.dart';
import 'package:flutter_boilerplate_getx/domain/repositories/register_user_repository.dart';

class AuthenticationRepositoryIml extends RegisterUserRepository {


  @override
  Future<User> register(String email, String password) {
    
    throw UnimplementedError();
  }
}
