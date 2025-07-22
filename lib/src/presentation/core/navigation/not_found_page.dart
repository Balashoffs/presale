import 'package:presale/src/presentation/common/typography_page_options.dart';

import 'package:presale/src/presentation/modules/auth/navi/auth_navi.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Page not found',
                style: getBodyTextStyle(context, MoonTextSize.size12)
              ),
              ElevatedButton(
                onPressed: () {
                  context.go(loginRoutePath);
                },
                child: const Text('return'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
