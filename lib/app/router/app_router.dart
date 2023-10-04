
import 'package:go_router/go_router.dart';
import 'package:provider_template/app/router/route_utils.dart';
import '../modules/baseView/page.dart';

class AppRouter {
  //prevent making instance
  AppRouter._();
  static GoRouter get router => _goRouter;
  static final  GoRouter _goRouter = GoRouter(
    initialLocation: APP_PAGE.home.toPath,
    routes: <RouteBase>[
      GoRoute(
        path: APP_PAGE.home.toPath,
        name: APP_PAGE.home.toName,
        builder: (context, state) => const BaseView(),
      ),
      // GoRoute(
      //   path: APP_PAGE.splash.toPath,
      //   name: APP_PAGE.splash.toName,
      //   // builder: (context, state) => const SplashPage(),
      // ),
      // GoRoute(
      //   path: APP_PAGE.login.toPath,
      //   name: APP_PAGE.login.toName,
      //   // builder: (context, state) => const LogInPage(),
      // ),
      // GoRoute(
      //   path: APP_PAGE.onBoarding.toPath,
      //   name: APP_PAGE.onBoarding.toName,
      //   // builder: (context, state) => const OnBoardingPage(),
      // ),
      // GoRoute(
      //   path: APP_PAGE.error.toPath,
      //   name: APP_PAGE.error.toName,
      //   // builder: (context, state) => ErrorPage(error: state.extra.toString()),
      // ),
     // StatefulShellRoute.indexedStack(branches: [])
    ],

  );
}

