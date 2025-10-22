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
  contact_us,
  about_us;

  String get route => '/${toString().replaceAll('BRRoute.', '')}';
  String get name => toString().replaceAll('BRRoute.', '');
}

@riverpod
GoRouter goRouter(Ref ref) => GoRouter(
      initialLocation: BRRoute.menu.route,
      routes: <GoRoute>[
        GoRoute(
          path: BRRoute.menu.route,
          builder: (BuildContext context, GoRouterState state) => const MenuPage(),
        ).fade(),
        GoRoute(
          path: BRRoute.sale_point.route,
          builder: (BuildContext context, GoRouterState state) => const SalePointPage(),
        ).fade(),
        GoRoute(
            path: BRRoute.contact_us.route,
            builder: (BuildContext context, GoRouterState state) {
              return const ContactUsPage();
            }).fade(),
        GoRoute(
            path: BRRoute.about_us.route,
            builder: (BuildContext context, GoRouterState state) {
              return const AboutUsPage();
            }).fade(),
      ],
    );
