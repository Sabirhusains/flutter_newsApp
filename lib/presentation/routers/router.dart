part of 'router_import.dart';


@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashScreenRoute.page, path: "/", initial: true),
    AutoRoute(page: OnboardRoute.page,),
    AutoRoute(page: AuthRoute.page,),
    AutoRoute(page: LoginRoute.page,),
    AutoRoute(page: RegisterRoute.page,),
    AutoRoute(page: GeneralRoute.page,),
    AutoRoute(page: HomeDetailsRoute.page,),
    AutoRoute(page: AddTagsRoute.page,),
    AutoRoute(page: UpdateTagsRoute.page,),
    AutoRoute(page: AddCategoriesRoute.page,),
    AutoRoute(page: UpdateCategoriesRoute.page,),
  ];
}