import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:quick_mart/Features/Auth/data/data_sources/auth_remote_data_source.dart';
import 'package:quick_mart/Features/Auth/data/repos/auth_repo_impl.dart';
import 'package:quick_mart/Features/Checkout/data/data_source/checkout_remote_data_source.dart';
import 'package:quick_mart/Features/Checkout/data/repos/checkout_repo_impl.dart';
import 'package:quick_mart/Features/Home/data/data_sources/home_remote_data_source.dart';
import 'package:quick_mart/Features/Home/data/repos/home_repo_impl.dart';
import 'package:quick_mart/Features/Profile/data/data_source/profile_local_data_source.dart';
import 'package:quick_mart/Features/Profile/data/data_source/profile_remote_data_source.dart';
import 'package:quick_mart/Features/Profile/data/repos/profile_repo_impl.dart';
import 'package:quick_mart/core/utils/api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<CheckoutRepoImpl>(
    CheckoutRepoImpl(CheckoutRemoteDataSourceImpl()),
  );
  getIt.registerSingleton<AuthRepoImpl>(
    AuthRepoImpl(AuthRemoteDataSourceImpl()),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(HomeRemoteDataSourceImpl(getIt.get<ApiService>())),
  );
  getIt.registerSingleton<ProfileRepoImpl>(
    ProfileRepoImpl(
      ProfileRemoteDataSourceImpl(),
      ProfileLocalDataSourceImpl(),
    ),
  );
}
