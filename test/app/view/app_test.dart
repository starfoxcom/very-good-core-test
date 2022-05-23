import 'package:flutter_test/flutter_test.dart';
import 'package:test_app/features/authentication/view/welcome_page.dart';
import 'package:test_app/router/router.dart';

import '../../router/router_test_utils.dart';

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
}
