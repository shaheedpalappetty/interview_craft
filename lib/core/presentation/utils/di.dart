import 'package:interview_craft/core/data/datasources/remote_data_source.dart';
import 'package:interview_craft/core/data/repositories/user_repository_impl.dart';
import 'package:interview_craft/core/domain/repositories/user_repository.dart';
import 'package:interview_craft/core/domain/usecases/authentication.dart';
import 'package:get_it/get_it.dart';

void setupDependencies() {
  // Register the UserRepository and RemoteDataSource with GetIt
  GetIt.instance.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(RemoteDataSource()));

  // Register the AuthenticateUserUseCase with GetIt, initializing it with UserRepository
  GetIt.instance.registerLazySingleton<AuthenticationUseCase>(
      () => AuthenticationUseCase(GetIt.instance<UserRepository>()));
}
