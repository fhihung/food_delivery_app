import 'package:flutter/material.dart';
import 'package:food_delivery_app/app/bottom_navigation/common_bottom_navigation.dart';
import 'package:food_delivery_app/app/login/screens/login_screen.dart';
import 'package:food_delivery_app/app/onboarding/screens/onboarding_screen.dart';
import 'package:food_delivery_app/app/sign_up/screens/sign_up_screen.dart';
import 'package:go_router/go_router.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return OnBoardingScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'login',
          builder: (BuildContext context, GoRouterState state) {
            return const LoginScreen();
          },
        ),
        GoRoute(
          path: 'sign_up',
          builder: (BuildContext context, GoRouterState state) {
            return const SignUpScreen();
          },
        ),
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) => const CommonBottomNavigation(),
        ),
      ],
    ),
  ],
);
