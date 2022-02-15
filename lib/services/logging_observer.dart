import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:timzy_mvvm/app/app.locator.dart';
import 'package:timzy_mvvm/app/app.router.dart';

class LoggingObserver extends NavigatorObserver {


  @override
  void didPop(route, previousRoute) {
    if (kDebugMode) {
      print(
        'route.name: ${route.settings.name}, previousRoute.name: ${previousRoute?.settings.name}');
    }
    super.didPop(route, previousRoute);
  }

  @override
  void didRemove(route, previousRoute) {
    if (kDebugMode) {
      print(
        'route.name: ${route.settings.name}, previousRoute.name: ${previousRoute?.settings.name}');
    }
    super.didRemove(route, previousRoute);
  }

  @override
  void didPush(route, previousRoute) {
    if (kDebugMode) {
      print(
        'route.name: ${route.settings.name}, previousRoute.name: ${previousRoute?.settings.name}');
    }
    super.didPush(route, previousRoute);
  }

  @override
  void didReplace({newRoute, oldRoute}) {
    if (kDebugMode) {
      print(
        'newRoute.name: ${newRoute?.settings.name}, oldRoute.name: ${oldRoute?.settings.name}');
    }
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }
}
