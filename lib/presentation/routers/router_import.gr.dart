// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:bloc_newsapp/presentation/screens/auth/auth_imports.dart'
    as _i1;
import 'package:bloc_newsapp/presentation/screens/auth/login/login_imports.dart'
    as _i3;
import 'package:bloc_newsapp/presentation/screens/auth/register/register_imports.dart'
    as _i5;
import 'package:bloc_newsapp/presentation/screens/general/general_imports.dart'
    as _i2;
import 'package:bloc_newsapp/presentation/screens/oboard/onboard_imports.dart'
    as _i4;
import 'package:bloc_newsapp/presentation/screens/splash/splash_import.dart'
    as _i6;
import 'package:flutter/material.dart' as _i8;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Auth(),
      );
    },
    GeneralRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.General(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Login(),
      );
    },
    OnboardRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardRouteArgs>(
          orElse: () => const OnboardRouteArgs());
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.Onboard(key: args.key),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Register(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.Auth]
class AuthRoute extends _i7.PageRouteInfo<void> {
  const AuthRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.General]
class GeneralRoute extends _i7.PageRouteInfo<void> {
  const GeneralRoute({List<_i7.PageRouteInfo>? children})
      : super(
          GeneralRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneralRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Login]
class LoginRoute extends _i7.PageRouteInfo<void> {
  const LoginRoute({List<_i7.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.Onboard]
class OnboardRoute extends _i7.PageRouteInfo<OnboardRouteArgs> {
  OnboardRoute({
    _i8.Key? key,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          OnboardRoute.name,
          args: OnboardRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static const _i7.PageInfo<OnboardRouteArgs> page =
      _i7.PageInfo<OnboardRouteArgs>(name);
}

class OnboardRouteArgs {
  const OnboardRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'OnboardRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.Register]
class RegisterRoute extends _i7.PageRouteInfo<void> {
  const RegisterRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SplashScreen]
class SplashScreenRoute extends _i7.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}