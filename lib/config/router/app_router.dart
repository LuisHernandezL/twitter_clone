import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:clone_twitter/config/router/app_routes.dart';

import 'package:clone_twitter/features/home/screens/screens.dart';

final goRouterProvider = Provider(
  (ref) {
    return GoRouter(
      initialLocation: AppRoutes.home,
      routes: [
        // GoRoute(path: AppRoutes.feed),
        // GoRoute(path: AppRoutes.login),
        GoRoute(
          path: AppRoutes.home,
          builder: (context, state) => const HomeScreen(),
        ),
        // GoRoute(path: AppRoutes.register),
      ],
      redirect: (context, state) {
        final isGoingto = state.matchedLocation;
        if (isGoingto == AppRoutes.home) {
          return null;
        }
        return AppRoutes.home;
      },
    );
  },
);
