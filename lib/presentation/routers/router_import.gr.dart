// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:bloc_newsapp/presentation/screens/auth/auth_imports.dart'
    as _i2;
import 'package:bloc_newsapp/presentation/screens/auth/login/login_imports.dart'
    as _i5;
import 'package:bloc_newsapp/presentation/screens/auth/register/register_imports.dart'
    as _i7;
import 'package:bloc_newsapp/presentation/screens/general/general_imports.dart'
    as _i3;
import 'package:bloc_newsapp/presentation/screens/general/home/home_imports.dart'
    as _i4;
import 'package:bloc_newsapp/presentation/screens/general/home/home_model.dart'
    as _i14;
import 'package:bloc_newsapp/presentation/screens/general/tags/addTags/add_tags_imports.dart'
    as _i1;
import 'package:bloc_newsapp/presentation/screens/general/tags/tags_imports.dart'
    as _i9;
import 'package:bloc_newsapp/presentation/screens/general/tags/tags_model.dart'
    as _i12;
import 'package:bloc_newsapp/presentation/screens/general/tags/updateTags/update_tags_imports.dart'
    as _i10;
import 'package:bloc_newsapp/presentation/screens/oboard/onboard_imports.dart'
    as _i6;
import 'package:bloc_newsapp/presentation/screens/splash/splash_import.dart'
    as _i8;
import 'package:flutter/material.dart' as _i13;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AddTagsRoute.name: (routeData) {
      return _i11.AutoRoutePage<_i12.TagsModel>(
        routeData: routeData,
        child: const _i1.AddTags(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Auth(),
      );
    },
    GeneralRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.General(),
      );
    },
    HomeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailsRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.HomeDetails(
          key: args.key,
          post: args.post,
          imagePath: args.imagePath,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Login(),
      );
    },
    OnboardRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardRouteArgs>(
          orElse: () => const OnboardRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.Onboard(key: args.key),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Register(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashScreen(),
      );
    },
    TagsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.Tags(),
      );
    },
    UpdateTagsRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateTagsRouteArgs>();
      return _i11.AutoRoutePage<_i12.TagsModel>(
        routeData: routeData,
        child: _i10.UpdateTags(
          key: args.key,
          tag: args.tag,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AddTags]
class AddTagsRoute extends _i11.PageRouteInfo<void> {
  const AddTagsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AddTagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTagsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Auth]
class AuthRoute extends _i11.PageRouteInfo<void> {
  const AuthRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.General]
class GeneralRoute extends _i11.PageRouteInfo<void> {
  const GeneralRoute({List<_i11.PageRouteInfo>? children})
      : super(
          GeneralRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneralRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeDetails]
class HomeDetailsRoute extends _i11.PageRouteInfo<HomeDetailsRouteArgs> {
  HomeDetailsRoute({
    _i13.Key? key,
    required _i14.Post post,
    required String imagePath,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          HomeDetailsRoute.name,
          args: HomeDetailsRouteArgs(
            key: key,
            post: post,
            imagePath: imagePath,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeDetailsRoute';

  static const _i11.PageInfo<HomeDetailsRouteArgs> page =
      _i11.PageInfo<HomeDetailsRouteArgs>(name);
}

class HomeDetailsRouteArgs {
  const HomeDetailsRouteArgs({
    this.key,
    required this.post,
    required this.imagePath,
  });

  final _i13.Key? key;

  final _i14.Post post;

  final String imagePath;

  @override
  String toString() {
    return 'HomeDetailsRouteArgs{key: $key, post: $post, imagePath: $imagePath}';
  }
}

/// generated route for
/// [_i5.Login]
class LoginRoute extends _i11.PageRouteInfo<void> {
  const LoginRoute({List<_i11.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Onboard]
class OnboardRoute extends _i11.PageRouteInfo<OnboardRouteArgs> {
  OnboardRoute({
    _i13.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          OnboardRoute.name,
          args: OnboardRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static const _i11.PageInfo<OnboardRouteArgs> page =
      _i11.PageInfo<OnboardRouteArgs>(name);
}

class OnboardRouteArgs {
  const OnboardRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'OnboardRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i7.Register]
class RegisterRoute extends _i11.PageRouteInfo<void> {
  const RegisterRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashScreen]
class SplashScreenRoute extends _i11.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.Tags]
class TagsRoute extends _i11.PageRouteInfo<void> {
  const TagsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          TagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TagsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.UpdateTags]
class UpdateTagsRoute extends _i11.PageRouteInfo<UpdateTagsRouteArgs> {
  UpdateTagsRoute({
    _i13.Key? key,
    required _i12.Tag tag,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          UpdateTagsRoute.name,
          args: UpdateTagsRouteArgs(
            key: key,
            tag: tag,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateTagsRoute';

  static const _i11.PageInfo<UpdateTagsRouteArgs> page =
      _i11.PageInfo<UpdateTagsRouteArgs>(name);
}

class UpdateTagsRouteArgs {
  const UpdateTagsRouteArgs({
    this.key,
    required this.tag,
  });

  final _i13.Key? key;

  final _i12.Tag tag;

  @override
  String toString() {
    return 'UpdateTagsRouteArgs{key: $key, tag: $tag}';
  }
}
