import 'package:auto_route/auto_route.dart';

import '../../../core/router/router.gr.dart';

/// This class used for defined routes and paths na dother properties
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  late final List<AutoRoute> routes = [
    AutoRoute(
      page: CounterRoute.page,
      path: '/counter',
      initial: false,
    ),
    AutoRoute(
      page: SplashRoute.page,
      path: '/splash',
      initial: true,
    ),
    AutoRoute(
      page: HomeRoute.page,
      path: '/home',
      initial: false,
    ),
    AutoRoute(
      page: SignInRoute.page,
      path: '/sign-in',
      initial: false,
    ),
    AutoRoute(
      page: SignUpRoute.page,
      path: '/sign-up',
      initial: false,
    ),
    AutoRoute(
      page: ExploreRoute.page,
      path: '/explore',
      initial: false,
    ),
    AutoRoute(
      page: InterestsRoute.page,
      path: '/interests',
      initial: false,
    ),
    AutoRoute(
      page: InterestsPeopleRoute.page,
      path: '/interests-people',
      initial: false,
    ),
    AutoRoute(
      page: InterestsTopicsRoute.page,
      path: '/interests-topics',
      initial: false,
    ),
    AutoRoute(
      page: NotificationsRoute.page,
      path: '/notifications',
      initial: false,
    ),
    AutoRoute(
      page: PrivacyPolicyRoute.page,
      path: '/privacy-policy',
      initial: false,
    ),
    AutoRoute(
      page: TermsAndConditionsRoute.page,
      path: '/terms-and-conditions',
      initial: false,
    ),
  ];
}
