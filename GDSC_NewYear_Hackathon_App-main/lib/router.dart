import 'package:riverpod/riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '/pages/login/login.dart';
import '/pages/home/home.dart';
import '/pages/todo/todo.dart';
import '/pages/meta/meta.dart';
import '/pages/my/my.dart';
import '/pages/todo/todo_add.dart';
import '/pages/todo/todo_summit.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(initialLocation: '/login', routes: <RouteBase>[
    GoRoute(
      path: '/login',
      builder: (context, state) {
        return LoginPage();
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (BuildContext context, GoRouterState state,
          StatefulNavigationShell navigationShell) {
        return Scaffold(
          body: navigationShell,
          bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: '홈'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.edit_calendar), label: '투두'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.gamepad_outlined), label: '게임'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: '마이'),
              ],
              backgroundColor: Colors.white,
              selectedItemColor: Color(0xff7c74ee),
              unselectedItemColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
              currentIndex: navigationShell.currentIndex,
              onTap: (int index) {
                navigationShell.goBranch(index);
              }),
          // endDrawer: DrawerPage(),
        );
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/',
            builder: (context, state) {
              return const Home();
            },
          ),
        ]),
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/todo',
            builder: (context, state) {
              return const Todo();
            },
            routes: <RouteBase>[
              GoRoute(
                path: 'add',
                builder: (context, state) {
                  return const TodoAdd();
                },
              ),
              GoRoute(
                path: 'summit',
                builder: (context, state) {
                  return const TodoSummit();
                },
              )
            ],
          )
        ]),
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/meta',
            builder: (context, state) {
              return const Meta();
            },
          ),
        ]),
        StatefulShellBranch(routes: <RouteBase>[
          GoRoute(
            path: '/my',
            builder: (context, state) {
              return const My();
            },
          ),
        ]),
      ],
    )
  ]);
});
