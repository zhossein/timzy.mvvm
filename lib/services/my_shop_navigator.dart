import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:timzy_mvvm/app/app.router.dart';
import 'package:timzy_mvvm/services/logging_observer.dart';

import 'my_route_observer.dart';

class MyShopNavigator extends StatelessWidget {
  const MyShopNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExtendedNavigator(
        router: MyShopNavigatorRouter(),
        navigatorKey: StackedService.nestedNavigationKey(2),
        initialRoute: MyShopNavigatorRoutes.myShop,
        observers: [StackedService.routeObserver,LoggingObserver()],
      ),
    );
  }
}
