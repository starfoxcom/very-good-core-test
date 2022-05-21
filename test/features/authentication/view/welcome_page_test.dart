import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/features/authentication/view/welcome_page.dart';
import 'package:test_app/router/router.dart';

import '../../../router/router_test_utils.dart';

void main() {
  late AppRouter router;
  setUp(() {
    router = AppRouter();
  });

  testWidgets('Initial route should be ${WelcomeRoute.name}',
      (WidgetTester tester) async {
    await pumpRouterApp(tester, router);
    expect(find.byType(WelcomePage), findsOneWidget);
  });

  testWidgets('Pushing to ${LoginRoute.name} should show [LoginRoute]',
      (WidgetTester tester) async {
    await pumpRouterApp(tester, router);
    unawaited(router.push(const LoginRoute()));
    await tester.pumpAndSettle();
    expectCurrentPage(router, LoginRoute.name);
    expect(router.current.path, const LoginRoute().path);
  });

  testWidgets('Navigating to ${LoginRoute.name} should show [LoginRoute]',
      (WidgetTester tester) async {
    await pumpRouterApp(tester, router);
    unawaited(router.navigate(const LoginRoute()));
    await tester.pumpAndSettle();
    expectCurrentPage(router, LoginRoute.name);
    expect(router.current.path, const LoginRoute().path);
  });

  testWidgets(
      'Pushing ${LoginRoute.name} then popping should show [WelcomePage]',
      (WidgetTester tester) async {
    await pumpRouterApp(tester, router);
    unawaited(router.push(const LoginRoute()));
    await tester.pumpAndSettle();
    unawaited(router.pop());
    await tester.pumpAndSettle();
    expectCurrentPage(router, WelcomeRoute.name);
    expect(router.current.path, const WelcomeRoute().path);
  });

  testWidgets('Pushing to ${SignupRoute.name} should show [SignupRoute]',
      (WidgetTester tester) async {
    await pumpRouterApp(tester, router);
    unawaited(router.push(const SignupRoute()));
    await tester.pumpAndSettle();
    expectCurrentPage(router, SignupRoute.name);
    expect(router.current.path, const SignupRoute().path);
  });

  testWidgets('Navigating to ${SignupRoute.name} should show [LoginRoute]',
      (WidgetTester tester) async {
    await pumpRouterApp(tester, router);
    unawaited(router.navigate(const SignupRoute()));
    await tester.pumpAndSettle();
    expectCurrentPage(router, SignupRoute.name);
    expect(router.current.path, const SignupRoute().path);
  });

  testWidgets(
      'Pushing ${SignupRoute.name} then popping should show [WelcomePage]',
      (WidgetTester tester) async {
    await pumpRouterApp(tester, router);
    unawaited(router.push(const SignupRoute()));
    await tester.pumpAndSettle();
    unawaited(router.pop());
    await tester.pumpAndSettle();
    expectCurrentPage(router, WelcomeRoute.name);
    expect(router.current.path, const WelcomeRoute().path);
  });
}
