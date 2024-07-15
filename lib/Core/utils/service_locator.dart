import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService());

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(getIt.get<ApiService>()),
  );
}
