import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:timzy_mvvm/app/app.router.dart';
import 'package:timzy_mvvm/services/logging_observer.dart';

class FavoritesNavigator extends StatelessWidget {
  const FavoritesNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExtendedNavigator(
        router: FavoritesNavigatorRouter(),
        navigatorKey: StackedService.nestedNavigationKey(3),
        initialRoute: FavoritesNavigatorRoutes.favorites,
        observers: [StackedService.routeObserver,LoggingObserver()],
      ),
    );
  }
}
