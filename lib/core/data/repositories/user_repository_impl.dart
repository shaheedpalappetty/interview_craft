import 'package:interview_craft/core/data/datasources/remote_data_source.dart';
import 'package:interview_craft/core/data/models/auth_user_model.dart';
import 'package:interview_craft/core/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final RemoteDataSource _remoteDataSource;

  UserRepositoryImpl(this._remoteDataSource);

  @override
  Future<AuthUserModel> authenticateUser(String email, String password) {
    return _remoteDataSource.authenticateUser(email, password);
  }
}
