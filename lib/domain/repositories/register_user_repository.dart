
import 'package:flutter_boilerplate_getx/domain/entities/user.dart';

abstract class RegisterUserRepository {
  Future<User> register(String email, String password);
}
