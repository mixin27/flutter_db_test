import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sqlite_demo/home/feat_home.dart';
import 'package:sqlite_demo/menu/feat_menu.dart';
import 'package:sqlite_demo/web/feat_web.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
      children: [
        // Menu
        AutoRoute(page: MenuHomePage, path: "menus"),
        // Web
        AutoRoute(page: WebHomePage, path: "webs"),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
