// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../services/favorites_navigator.dart';
import '../services/market_navigator.dart';
import '../services/my_shop_navigator.dart';
import '../ui/common/root.dart';
import '../ui/favorites/favorite_details.dart';
import '../ui/favorites/favorite_map.dart';
import '../ui/favorites/favorites.dart';
import '../ui/market/market.dart';
import '../ui/market/result_details.dart';
import '../ui/market/result_map.dart';
import '../ui/market/results.dart';
import '../ui/market/search.dart';
import '../ui/my_shop/ad_details.dart';
import '../ui/my_shop/modify_ad.dart';
import '../ui/my_shop/my_shop.dart';
import '../ui/my_shop/post_ad.dart';

class Routes {
  static const String root = '/';
  static const String marketNavigator = '/market-navigator';
  static const String myShopNavigator = '/my-shop-navigator';
  static const String favoritesNavigator = '/favorites-navigator';
  static const all = <String>{
    root,
    marketNavigator,
    myShopNavigator,
    favoritesNavigator,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.root, page: Root),
    RouteDef(
      Routes.marketNavigator,
      page: MarketNavigator,
      generator: MarketNavigatorRouter(),
    ),
    RouteDef(
      Routes.myShopNavigator,
      page: MyShopNavigator,
      generator: MyShopNavigatorRouter(),
    ),
    RouteDef(
      Routes.favoritesNavigator,
      page: FavoritesNavigator,
      generator: FavoritesNavigatorRouter(),
    ),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    Root: (data) {
      var args = data.getArgs<RootArguments>(
        orElse: () => RootArguments(),
      );
      return CupertinoPageRoute<dynamic>(
        builder: (context) => Root(key: args.key),
        settings: data,
      );
    },
    MarketNavigator: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MarketNavigator(),
        settings: data,
      );
    },
    MyShopNavigator: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MyShopNavigator(),
        settings: data,
      );
    },
    FavoritesNavigator: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const FavoritesNavigator(),
        settings: data,
      );
    },
  };
}

class MarketNavigatorRoutes {
  static const String market = '/Market';
  static const String search = '/Search';
  static const String results = '/Results';
  static const String resultDetails = '/result-details';
  static const String resultMap = '/result-map';
  static const all = <String>{
    market,
    search,
    results,
    resultDetails,
    resultMap,
  };
}

class MarketNavigatorRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(MarketNavigatorRoutes.market, page: Market),
    RouteDef(MarketNavigatorRoutes.search, page: Search),
    RouteDef(MarketNavigatorRoutes.results, page: Results),
    RouteDef(MarketNavigatorRoutes.resultDetails, page: ResultDetails),
    RouteDef(MarketNavigatorRoutes.resultMap, page: ResultMap),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    Market: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Market(),
        settings: data,
      );
    },
    Search: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Search(),
        settings: data,
      );
    },
    Results: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Results(),
        settings: data,
      );
    },
    ResultDetails: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ResultDetails(),
        settings: data,
      );
    },
    ResultMap: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ResultMap(),
        settings: data,
      );
    },
  };
}

class MyShopNavigatorRoutes {
  static const String myShop = '/my-shop';
  static const String postAd = '/post-ad';
  static const String modifyAd = '/modify-ad';
  static const String adDetails = '/ad-details';
  static const all = <String>{
    myShop,
    postAd,
    modifyAd,
    adDetails,
  };
}

class MyShopNavigatorRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(MyShopNavigatorRoutes.myShop, page: MyShop),
    RouteDef(MyShopNavigatorRoutes.postAd, page: PostAd),
    RouteDef(MyShopNavigatorRoutes.modifyAd, page: ModifyAd),
    RouteDef(MyShopNavigatorRoutes.adDetails, page: AdDetails),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    MyShop: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const MyShop(),
        settings: data,
      );
    },
    PostAd: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PostAd(),
        settings: data,
      );
    },
    ModifyAd: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const ModifyAd(),
        settings: data,
      );
    },
    AdDetails: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const AdDetails(),
        settings: data,
      );
    },
  };
}

class FavoritesNavigatorRoutes {
  static const String favorites = '/Favorites';
  static const String favoriteDetails = '/favorite-details';
  static const String favoriteMap = '/favorite-map';
  static const all = <String>{
    favorites,
    favoriteDetails,
    favoriteMap,
  };
}

class FavoritesNavigatorRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(FavoritesNavigatorRoutes.favorites, page: Favorites),
    RouteDef(FavoritesNavigatorRoutes.favoriteDetails, page: FavoriteDetails),
    RouteDef(FavoritesNavigatorRoutes.favoriteMap, page: FavoriteMap),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    Favorites: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const Favorites(),
        settings: data,
      );
    },
    FavoriteDetails: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const FavoriteDetails(),
        settings: data,
      );
    },
    FavoriteMap: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const FavoriteMap(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// Root arguments holder class
class RootArguments {
  final Key? key;
  RootArguments({this.key});
}
