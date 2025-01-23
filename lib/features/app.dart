import 'dart:developer';

import 'package:agreya_coffee/constants/constants.dart';
import 'package:agreya_coffee/di/di.dart';
import 'package:agreya_coffee/features/home/home.dart';
import 'package:agreya_coffee/features/menu_detail/menu_detail.dart';
import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // router configuration
  final GoRouter _router = GoRouter(
    observers: <NavigatorObserver>[
      ChuckerFlutter.navigatorObserver,
    ],
    initialLocation: RoutePaths.home,
    routes: <RouteBase>[
      GoRoute(
        path: RoutePaths.home,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider<HomeBloc>(
            create: (_) => HomeBloc(
              homeRepository: injector<HomeRepository>(),
            ),
            child: const HomePage(),
          );
        },
      ),
      GoRoute(
        path: RoutePaths.menuDetail,
        builder: (BuildContext context, GoRouterState state) {
          final MenuDetailArguments arguments =
              state.extra as MenuDetailArguments? ?? MenuDetailArguments(menuItem: MenuItemModel());

          return BlocProvider<MenuDetailBloc>(
            create: (_) => MenuDetailBloc(),
            child: MenuDetailPage(
              arguments: arguments,
            ),
          );
        },
      ),
    ],
  );

  void _setupDevicePropertiesConstants(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    kDeviceSize = mediaQuery.size;
    kDeviceLogicalWidth = kDeviceSize.width;
    kDeviceLogicalHeight = kDeviceSize.height;
    kTopPadding = mediaQuery.padding.top;
    kBottomPadding = mediaQuery.padding.bottom;
    kDevicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    kDevicePhysicalWidth = kDeviceLogicalWidth * kDevicePixelRatio;
    kDevicePhysicalHeight = kDeviceLogicalHeight * kDevicePixelRatio;
    log('_setupDevicePropertiesConstants!');
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _setupDevicePropertiesConstants(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade50,
      ),
      routerConfig: _router,
    );
  }
}
