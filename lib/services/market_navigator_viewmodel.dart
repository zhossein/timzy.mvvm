import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:timzy_mvvm/app/app.router.dart';

import 'logging_observer.dart';

class MarketNavigatorViewModel extends BaseViewModel{

  final ExtendedNavigator _extendedNavigator = ExtendedNavigator(
    router: MarketNavigatorRouter(),
    navigatorKey: StackedService.nestedNavigationKey(1),
    initialRoute: MarketNavigatorRoutes.market,
    observers: [StackedService.routeObserver,LoggingObserver()],
  );

  ExtendedNavigator get extendedNavigator => _extendedNavigator;
}