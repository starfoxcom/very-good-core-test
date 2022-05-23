import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_app/l10n/l10n.dart';
import 'package:test_app/router/router.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final l10n = context.l10n;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 48,
                  width: size.width * 0.43,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO(starfoxcom): Add Tracking for login button
                      context.pushRoute(const LoginRoute());
                    },
                    child: Text(
                      l10n.auth_login,
                    ),
                  ),
                ),
                const Expanded(child: Text('')),
                SizedBox(
                  height: 48,
                  width: size.width * 0.43,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO(starfoxcom): Add Tracking for signup button
                      context.pushRoute(const SignupRoute());
                    },
                    child: Text(
                      l10n.auth_signup,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
