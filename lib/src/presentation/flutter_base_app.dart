import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/src/presentation/navigation/router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FlutterBaseApp extends StatelessWidget {
  const FlutterBaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerConfig: router,
      builder: (context, child) {
        return ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 360, name: MOBILE),
          ],
        );
      },
    );
  }
}
