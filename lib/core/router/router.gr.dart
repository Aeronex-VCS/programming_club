// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;
import 'package:programming_club/features/blog/view/blog_page.dart' as _i1;
import 'package:programming_club/features/contest_details/view/contest_details_page.dart'
    as _i2;
import 'package:programming_club/features/counter/view/counter_page.dart'
    deferred as _i3;
import 'package:programming_club/features/explore/view/explore_page.dart'
    as _i4;
import 'package:programming_club/features/home/model/code_forces_model.dart'
    as _i18;
import 'package:programming_club/features/home/view/home_page.dart' as _i5;
import 'package:programming_club/features/interests/view/interests_page.dart'
    as _i6;
import 'package:programming_club/features/interests_people/view/interests_people_page.dart'
    as _i7;
import 'package:programming_club/features/interests_topics/view/interests_topics_page.dart'
    as _i8;
import 'package:programming_club/features/notifications/view/notifications_page.dart'
    as _i9;
import 'package:programming_club/features/privacy_policy/view/privacy_policy_page.dart'
    as _i10;
import 'package:programming_club/features/search_topics/view/search_topics_page.dart'
    as _i11;
import 'package:programming_club/features/sign_in/view/sign_in_page.dart'
    as _i12;
import 'package:programming_club/features/sign_up/view/sign_up_page.dart'
    as _i13;
import 'package:programming_club/features/splash/view/splash_page.dart' as _i14;
import 'package:programming_club/features/terms_and_conditions/view/terms_and_conditions_page.dart'
    as _i15;

abstract class $AppRouter extends _i16.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    BlogRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BlogPage(),
      );
    },
    ContestDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ContestDetailsRouteArgs>();
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ContestDetailsPage(
          key: args.key,
          args: args.args,
        ),
      );
    },
    CounterRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.CounterPage(),
        ),
      );
    },
    ExploreRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ExplorePage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.HomePage(key: args.key),
      );
    },
    InterestsRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.InterestsPage(),
      );
    },
    InterestsPeopleRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.InterestsPeoplePage(),
      );
    },
    InterestsTopicsRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.InterestsTopicsPage(),
      );
    },
    NotificationsRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationsPage(),
      );
    },
    PrivacyPolicyRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.PrivacyPolicyPage(),
      );
    },
    SearchTopicsRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SearchTopicsPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SignUpPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SplashScreen(),
      );
    },
    TermsAndConditionsRoute.name: (routeData) {
      return _i16.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.TermsAndConditionsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BlogPage]
class BlogRoute extends _i16.PageRouteInfo<void> {
  const BlogRoute({List<_i16.PageRouteInfo>? children})
      : super(
          BlogRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlogRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ContestDetailsPage]
class ContestDetailsRoute extends _i16.PageRouteInfo<ContestDetailsRouteArgs> {
  ContestDetailsRoute({
    _i17.Key? key,
    required _i18.CodeForcesContest args,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          ContestDetailsRoute.name,
          args: ContestDetailsRouteArgs(
            key: key,
            args: args,
          ),
          initialChildren: children,
        );

  static const String name = 'ContestDetailsRoute';

  static const _i16.PageInfo<ContestDetailsRouteArgs> page =
      _i16.PageInfo<ContestDetailsRouteArgs>(name);
}

class ContestDetailsRouteArgs {
  const ContestDetailsRouteArgs({
    this.key,
    required this.args,
  });

  final _i17.Key? key;

  final _i18.CodeForcesContest args;

  @override
  String toString() {
    return 'ContestDetailsRouteArgs{key: $key, args: $args}';
  }
}

/// generated route for
/// [_i3.CounterPage]
class CounterRoute extends _i16.PageRouteInfo<void> {
  const CounterRoute({List<_i16.PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ExplorePage]
class ExploreRoute extends _i16.PageRouteInfo<void> {
  const ExploreRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i16.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i17.Key? key,
    List<_i16.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i16.PageInfo<HomeRouteArgs> page =
      _i16.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i17.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.InterestsPage]
class InterestsRoute extends _i16.PageRouteInfo<void> {
  const InterestsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          InterestsRoute.name,
          initialChildren: children,
        );

  static const String name = 'InterestsRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i7.InterestsPeoplePage]
class InterestsPeopleRoute extends _i16.PageRouteInfo<void> {
  const InterestsPeopleRoute({List<_i16.PageRouteInfo>? children})
      : super(
          InterestsPeopleRoute.name,
          initialChildren: children,
        );

  static const String name = 'InterestsPeopleRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i8.InterestsTopicsPage]
class InterestsTopicsRoute extends _i16.PageRouteInfo<void> {
  const InterestsTopicsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          InterestsTopicsRoute.name,
          initialChildren: children,
        );

  static const String name = 'InterestsTopicsRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i9.NotificationsPage]
class NotificationsRoute extends _i16.PageRouteInfo<void> {
  const NotificationsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          NotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationsRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PrivacyPolicyPage]
class PrivacyPolicyRoute extends _i16.PageRouteInfo<void> {
  const PrivacyPolicyRoute({List<_i16.PageRouteInfo>? children})
      : super(
          PrivacyPolicyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyPolicyRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SearchTopicsPage]
class SearchTopicsRoute extends _i16.PageRouteInfo<void> {
  const SearchTopicsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SearchTopicsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchTopicsRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SignInPage]
class SignInRoute extends _i16.PageRouteInfo<void> {
  const SignInRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SignUpPage]
class SignUpRoute extends _i16.PageRouteInfo<void> {
  const SignUpRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SplashScreen]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute({List<_i16.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}

/// generated route for
/// [_i15.TermsAndConditionsPage]
class TermsAndConditionsRoute extends _i16.PageRouteInfo<void> {
  const TermsAndConditionsRoute({List<_i16.PageRouteInfo>? children})
      : super(
          TermsAndConditionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsAndConditionsRoute';

  static const _i16.PageInfo<void> page = _i16.PageInfo<void>(name);
}
