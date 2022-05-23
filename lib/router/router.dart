// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_app/features/authentication/view/login_page.dart';
import 'package:test_app/features/authentication/view/signup_page.dart';
import 'package:test_app/features/authentication/view/welcome_page.dart';

part 'router.gr.dart'; // generated part

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<bool>(
      page: WelcomePage,
      path: '/',
      initial: true,
    ),
    AutoRoute<bool>(
      page: LoginPage,
      path: '/login',
    ),
    AutoRoute<bool>(
      page: SignupPage,
      path: '/signup',
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
