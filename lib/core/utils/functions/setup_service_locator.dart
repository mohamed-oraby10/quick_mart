import 'package:get_it/get_it.dart';
import 'package:quick_mart/Features/Auth/data/data_sources/auth_remote_data_source.dart';
import 'package:quick_mart/Features/Auth/data/repos/auth_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<AuthRepoImpl>(AuthRepoImpl(AuthRemoteDataSourceImpl()));
}
