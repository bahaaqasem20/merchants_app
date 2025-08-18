import 'package:merchants_training/features/splash/presentation/views/home/presentation/views/widgets/login_view.dart';

import '../../features/splash/presentation/views/home/presentation/views/widgets/branches_view.dart';
import '../../features/splash/presentation/views/home/presentation/views/widgets/home_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRoutes {
  static const splash = Routes.splashView;
  static const loginView = Routes.loginView;
  static const homeView = Routes.homeView;
  static const branchesView = Routes.branchesView;

  static final routes = {
    Routes.splashView : (context) => const SplashView(),
    Routes.loginView : (context) => const LoginView(),
    Routes.homeView : (context) => const HomeView(),
    Routes.branchesView : (context) => const BranchesView(),
  };
}

abstract class Routes {
  static const splashView = '/splash_view';
  static const loginView = '/login_view';
  static const homeView = '/home_view';
  static const branchesView = '/branches_view';
}
