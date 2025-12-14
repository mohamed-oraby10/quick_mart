import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart/Features/Home/presentation/views/widgets/home_view_body.dart';
import 'package:quick_mart/Features/Profile/data/repos/profile_repo_impl.dart';
import 'package:quick_mart/Features/Profile/domain/use_cases/fetch_user_data_use_case.dart';
import 'package:quick_mart/Features/Profile/presentation/manager/fetch_user_data_cubit/fetch_user_data_cubit.dart';
import 'package:quick_mart/core/utils/functions/setup_service_locator.dart';
import 'package:quick_mart/core/widgets/app_bottom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = FetchUserDataCubit(
          FetchUserDataUseCase(getIt.get<ProfileRepoImpl>()),
        );
        cubit.fetchUserData();
        return cubit;
      },
      child: const Scaffold(
        bottomNavigationBar: AppBottomNavigationBar(),
        body: HomeViewBody(),
      ),
    );
  }
}
