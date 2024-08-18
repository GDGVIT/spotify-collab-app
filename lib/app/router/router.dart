import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_collab_app/view/screens/create_screen.dart';
import 'package:spotify_collab_app/view/screens/join_screen.dart';
import 'package:spotify_collab_app/view/screens/landing_screen.dart';
import 'package:spotify_collab_app/view/screens/login_screen.dart';
import 'package:spotify_collab_app/view/screens/signup_screen.dart';
import 'package:spotify_collab_app/view/screens/home_screen.dart';
import 'package:spotify_collab_app/view/screens/connect_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(
        child: LandingScreen(),
      ),
      routes: [
        GoRoute(
          path: 'login',
          pageBuilder: (context, state) =>
              const MaterialPage(child: LoginScreen()),
        ),
        GoRoute(
          path: 'signup',
          pageBuilder: (context, state) =>
              const MaterialPage(child: SignupScreen()),
        ),
        GoRoute(
          path: 'connect',
          pageBuilder: (context, state) =>
              const MaterialPage(child: ConnectScreen()),
        ),
        GoRoute(
          path: 'home',
          pageBuilder: (context, state) =>
              const MaterialPage(child: HomeScreen()),
        ),
        GoRoute(
          path: 'create',
          pageBuilder: (context, state) =>
              const MaterialPage(child: CreateScreen()),
        ),
        GoRoute(
          path: 'join',
          pageBuilder: (context, state) =>
              const MaterialPage(child: JoinScreen()),
        ),
      ],
    ),
    GoRoute(
      path: '/home',
      pageBuilder: (context, state) => const MaterialPage(child: HomeScreen()),
      routes: [
        GoRoute(
          path: 'create',
          pageBuilder: (context, state) =>
              const MaterialPage(child: CreateScreen()),
        ),
        GoRoute(
          path: 'join',
          pageBuilder: (context, state) =>
              const MaterialPage(child: JoinScreen()),
        ),
      ],
    ),
  ],
);
