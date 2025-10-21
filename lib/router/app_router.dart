// ignore_for_file: prefer_function_declarations_over_variables

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../features/features.dart';
import 'fade_extension.dart';

part 'app_router.g.dart';

enum BRRoute {
  menu,
  sale_point,
  social,
  login;

  String get route => '/${toString().replaceAll('BRRoute.', '')}';
  String get name => toString().replaceAll('BRRoute.', '');
}

@riverpod
GoRouter goRouter(Ref ref) => GoRouter(
      initialLocation: BRRoute.menu.route,
      routes: <GoRoute>[
        GoRoute(
            path: BRRoute.login.route,
            builder: (BuildContext context, GoRouterState state) {
              return const LoginScreen();
            }).fade(),
        GoRoute(
          path: BRRoute.menu.route,
          builder: (BuildContext context, GoRouterState state) => const MenuPage(),
        ).fade(),
      ],
    );
