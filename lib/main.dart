import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/constants/my_strings.dart';
import 'core/themes/app_themes.dart';
import 'data/repositories/auth_repo.dart';
import 'data/repositories/categories_repo.dart';
import 'data/repositories/post_repo.dart';
import 'data/repositories/repository.dart';
import 'data/repositories/tags_repo.dart';
import 'presentation/routers/router_import.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(RepositoryProvider(
    create: (context)=>Repository(
        tagsRepo: TagsRepo(),
      authRepo: AuthRepo(),
      postRepo: PostRepo(),
     categoriesRepo: CategoriesRepo(),
    ),
      child: MyApp()));
}

class MyApp extends StatelessWidget {

  final _appRouter = AppRouter();
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context,child) {
        return MaterialApp.router(
          title: MyStrings.appName,
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          themeMode: ThemeMode.system,
          routerConfig: _appRouter.config(),
          // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }
    );
  }
}