import 'dart:ffi';

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:timzy_mvvm/app/app.locator.dart';
import 'package:timzy_mvvm/services/favorites_navigator.dart';
import 'package:timzy_mvvm/services/market_navigator.dart';
import 'package:timzy_mvvm/services/my_shop_navigator.dart';
import 'package:timzy_mvvm/ui/common/root_viewmodel.dart';

class Root extends StatelessWidget {
  Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RootViewModel>.reactive(
      viewModelBuilder: locator,
      disposeViewModel: false,
      builder: (context, model, child) => Scaffold(
        body: PageTransitionSwitcher(
          reverse: model.reverse,
          transitionBuilder: (
            Widget child,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            );
          },
          child: getViewForIndex(model.currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.grey[800],
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Market',
              icon: Icon(Icons.storefront),
            ),
            BottomNavigationBarItem(
              label: 'My Shop',
              icon: Icon(Icons.phone_android),
            ),
            BottomNavigationBarItem(
              label: 'Favorites',
              icon: Icon(Icons.phone_android),
            ),
          ],
        ),
      ),
    );
  }

  final Map<int, Widget?> _cacheViews = {0: null, 1: null, 2: null};

  Widget? getViewForIndex(int index) {
    Widget? viewToReturn = _cacheViews[index];

    if (viewToReturn == null) {
      switch (index) {
        case 0:
          //_cachedViews[0] = const Market();
          viewToReturn = const MarketNavigator();
          //viewToReturn = _cacheViews[0];
          break;
        case 1:
          //_cachedViews[1] = const MyShop();
          viewToReturn = const MyShopNavigator();
          //viewToReturn = _cacheViews[1];
          break;
        case 2:
          //_cachedViews[2] = const Favorites();
          viewToReturn = const FavoritesNavigator();
          //viewToReturn = _cacheViews[2];
          break;
      }
    }
    //_cacheViews[index] = viewToReturn;
    return viewToReturn;
  }
}

// TRASH CODE below
// Widget getViewForIndex(int index) {
//   switch (index) {
//     case 0:
//       return const MarketNavigator();
//     case 1:
//       return const MyShopNavigator();
//     default:
//       return const FavoritesNavigator();
//   }
// }
//
//
