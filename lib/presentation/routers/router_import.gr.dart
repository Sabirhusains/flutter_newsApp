// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:bloc_newsapp/presentation/screens/auth/auth_imports.dart'
    as _i3;
import 'package:bloc_newsapp/presentation/screens/auth/login/login_imports.dart'
    as _i6;
import 'package:bloc_newsapp/presentation/screens/auth/register/register_imports.dart'
    as _i8;
import 'package:bloc_newsapp/presentation/screens/general/categories/addCategories/add_categories_imports.dart'
    as _i1;
import 'package:bloc_newsapp/presentation/screens/general/categories/categories_model.dart'
    as _i14;
import 'package:bloc_newsapp/presentation/screens/general/categories/updateCategories/update_categories_imports.dart'
    as _i11;
import 'package:bloc_newsapp/presentation/screens/general/general_imports.dart'
    as _i4;
import 'package:bloc_newsapp/presentation/screens/general/home/home_imports.dart'
    as _i5;
import 'package:bloc_newsapp/presentation/screens/general/home/home_model.dart'
    as _i17;
import 'package:bloc_newsapp/presentation/screens/general/tags/addTags/add_tags_imports.dart'
    as _i2;
import 'package:bloc_newsapp/presentation/screens/general/tags/tags_imports.dart'
    as _i10;
import 'package:bloc_newsapp/presentation/screens/general/tags/tags_model.dart'
    as _i15;
import 'package:bloc_newsapp/presentation/screens/general/tags/updateTags/update_tags_imports.dart'
    as _i12;
import 'package:bloc_newsapp/presentation/screens/oboard/onboard_imports.dart'
    as _i7;
import 'package:bloc_newsapp/presentation/screens/splash/splash_import.dart'
    as _i9;
import 'package:flutter/material.dart' as _i16;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    AddCategoriesRoute.name: (routeData) {
      return _i13.AutoRoutePage<_i14.CategoriesModel>(
        routeData: routeData,
        child: const _i1.AddCategories(),
      );
    },
    AddTagsRoute.name: (routeData) {
      return _i13.AutoRoutePage<_i15.TagsModel>(
        routeData: routeData,
        child: const _i2.AddTags(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Auth(),
      );
    },
    GeneralRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.General(),
      );
    },
    HomeDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<HomeDetailsRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.HomeDetails(
          key: args.key,
          post: args.post,
          imagePath: args.imagePath,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Login(),
      );
    },
    OnboardRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardRouteArgs>(
          orElse: () => const OnboardRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.Onboard(key: args.key),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.Register(),
      );
    },
    SplashScreenRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashScreen(),
      );
    },
    TagsRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.Tags(),
      );
    },
    UpdateCategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateCategoriesRouteArgs>();
      return _i13.AutoRoutePage<_i14.CategoriesModel>(
        routeData: routeData,
        child: _i11.UpdateCategories(
          key: args.key,
          category: args.category,
        ),
      );
    },
    UpdateTagsRoute.name: (routeData) {
      final args = routeData.argsAs<UpdateTagsRouteArgs>();
      return _i13.AutoRoutePage<_i15.TagsModel>(
        routeData: routeData,
        child: _i12.UpdateTags(
          key: args.key,
          tag: args.tag,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AddCategories]
class AddCategoriesRoute extends _i13.PageRouteInfo<void> {
  const AddCategoriesRoute({List<_i13.PageRouteInfo>? children})
      : super(
          AddCategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCategoriesRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddTags]
class AddTagsRoute extends _i13.PageRouteInfo<void> {
  const AddTagsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          AddTagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTagsRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Auth]
class AuthRoute extends _i13.PageRouteInfo<void> {
  const AuthRoute({List<_i13.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.General]
class GeneralRoute extends _i13.PageRouteInfo<void> {
  const GeneralRoute({List<_i13.PageRouteInfo>? children})
      : super(
          GeneralRoute.name,
          initialChildren: children,
        );

  static const String name = 'GeneralRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomeDetails]
class HomeDetailsRoute extends _i13.PageRouteInfo<HomeDetailsRouteArgs> {
  HomeDetailsRoute({
    _i16.Key? key,
    required _i17.Post post,
    required String imagePath,
    List<_i13.PageRouteInfo>? children,
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

  static const _i13.PageInfo<HomeDetailsRouteArgs> page =
      _i13.PageInfo<HomeDetailsRouteArgs>(name);
}

class HomeDetailsRouteArgs {
  const HomeDetailsRouteArgs({
    this.key,
    required this.post,
    required this.imagePath,
  });

  final _i16.Key? key;

  final _i17.Post post;

  final String imagePath;

  @override
  String toString() {
    return 'HomeDetailsRouteArgs{key: $key, post: $post, imagePath: $imagePath}';
  }
}

/// generated route for
/// [_i6.Login]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Onboard]
class OnboardRoute extends _i13.PageRouteInfo<OnboardRouteArgs> {
  OnboardRoute({
    _i16.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          OnboardRoute.name,
          args: OnboardRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardRoute';

  static const _i13.PageInfo<OnboardRouteArgs> page =
      _i13.PageInfo<OnboardRouteArgs>(name);
}

class OnboardRouteArgs {
  const OnboardRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'OnboardRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.Register]
class RegisterRoute extends _i13.PageRouteInfo<void> {
  const RegisterRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SplashScreen]
class SplashScreenRoute extends _i13.PageRouteInfo<void> {
  const SplashScreenRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashScreenRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Tags]
class TagsRoute extends _i13.PageRouteInfo<void> {
  const TagsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          TagsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TagsRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.UpdateCategories]
class UpdateCategoriesRoute
    extends _i13.PageRouteInfo<UpdateCategoriesRouteArgs> {
  UpdateCategoriesRoute({
    _i16.Key? key,
    required _i14.Category category,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          UpdateCategoriesRoute.name,
          args: UpdateCategoriesRouteArgs(
            key: key,
            category: category,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateCategoriesRoute';

  static const _i13.PageInfo<UpdateCategoriesRouteArgs> page =
      _i13.PageInfo<UpdateCategoriesRouteArgs>(name);
}

class UpdateCategoriesRouteArgs {
  const UpdateCategoriesRouteArgs({
    this.key,
    required this.category,
  });

  final _i16.Key? key;

  final _i14.Category category;

  @override
  String toString() {
    return 'UpdateCategoriesRouteArgs{key: $key, category: $category}';
  }
}

/// generated route for
/// [_i12.UpdateTags]
class UpdateTagsRoute extends _i13.PageRouteInfo<UpdateTagsRouteArgs> {
  UpdateTagsRoute({
    _i16.Key? key,
    required _i15.Tag tag,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          UpdateTagsRoute.name,
          args: UpdateTagsRouteArgs(
            key: key,
            tag: tag,
          ),
          initialChildren: children,
        );

  static const String name = 'UpdateTagsRoute';

  static const _i13.PageInfo<UpdateTagsRouteArgs> page =
      _i13.PageInfo<UpdateTagsRouteArgs>(name);
}

class UpdateTagsRouteArgs {
  const UpdateTagsRouteArgs({
    this.key,
    required this.tag,
  });

  final _i16.Key? key;

  final _i15.Tag tag;

  @override
  String toString() {
    return 'UpdateTagsRouteArgs{key: $key, tag: $tag}';
  }
}
