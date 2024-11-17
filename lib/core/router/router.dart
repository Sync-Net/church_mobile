import 'package:church_mobile/core/router/router_name.dart';
import 'package:church_mobile/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/view/login/login_view.dart';
import '../../features/on_boarding/presentation/view/on_boarding_view.dart';

GoRouter createRouter(String initialLocation) {
  return GoRouter(
    initialLocation: initialLocation,
    routes: [
      GoRoute(
        path: RouterName.splashScreen,
        name: RouterName.splashScreen,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: RouterName.onBoarding,
        name: RouterName.onBoarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: RouterName.login,
        name: RouterName.login,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}

GoRouter initializeRouter() {
  return createRouter(RouterName.splashScreen);
}
