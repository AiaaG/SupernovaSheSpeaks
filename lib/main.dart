import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'index.dart';
import 'screens/onboarding.dart';
import 'screens/homepage.dart';
import 'screens/stories.dart';
import 'screens/support.dart';
import 'screens/diary.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Girls\' Galaxy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: OnboardingWidget.routePath,
        name: OnboardingWidget.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardingWidget();
        },
      ),
      GoRoute(
        path: HomepageWidget.routePath,
        name: HomepageWidget.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const HomepageWidget();
        },
      ),
      GoRoute(
        path: StoriesWidget.routePath,
        name: StoriesWidget.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const StoriesWidget();
        },
      ),
      GoRoute(
        path: SupportWidget.routePath,
        name: SupportWidget.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const SupportWidget();
        },
      ),
      GoRoute(
        path: DiaryWidget.routePath,
        name: DiaryWidget.routeName,
        builder: (BuildContext context, GoRouterState state) {
          return const DiaryWidget();
        },
      ),
    ],
    initialLocation: OnboardingWidget.routePath,
  );
}

class AppState extends ChangeNotifier {}
