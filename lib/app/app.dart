import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:timzy_mvvm/app/app.router.dart';
import 'package:timzy_mvvm/services/favorites_navigator.dart';
import 'package:timzy_mvvm/services/market_navigator.dart';
import 'package:timzy_mvvm/services/market_navigator_viewmodel.dart';
import 'package:timzy_mvvm/services/my_shop_navigator.dart';
import 'package:timzy_mvvm/ui/common/root.dart';
import 'package:timzy_mvvm/ui/common/root_viewmodel.dart';
import 'package:timzy_mvvm/ui/favorites/favorite_details.dart';
import 'package:timzy_mvvm/ui/favorites/favorite_map.dart';
import 'package:timzy_mvvm/ui/favorites/favorites.dart';
import 'package:timzy_mvvm/ui/market/market.dart';
import 'package:timzy_mvvm/ui/market/result_details.dart';
import 'package:timzy_mvvm/ui/market/result_map.dart';
import 'package:timzy_mvvm/ui/market/results.dart';
import 'package:timzy_mvvm/ui/market/search.dart';
import 'package:timzy_mvvm/ui/my_shop/ad_details.dart';
import 'package:timzy_mvvm/ui/my_shop/modify_ad.dart';
import 'package:timzy_mvvm/ui/my_shop/my_shop.dart';
import 'package:timzy_mvvm/ui/my_shop/post_ad.dart';

@StackedApp(
  routes: [
    CupertinoRoute(page: Root, initial: true),
    MaterialRoute(page: MarketNavigator, children: [
      MaterialRoute(page: Market,),
      MaterialRoute(page: Search),
      MaterialRoute(page: Results),
      MaterialRoute(page: ResultDetails),
      MaterialRoute(page: ResultMap),
    ]),
    MaterialRoute(page: MyShopNavigator, children: [
      MaterialRoute(page: MyShop),
      MaterialRoute(page: PostAd),
      MaterialRoute(page: ModifyAd),
      MaterialRoute(page: AdDetails),
    ]),
    MaterialRoute(page: FavoritesNavigator, children: [
      MaterialRoute(page: Favorites),
      MaterialRoute(page: FavoriteDetails),
      MaterialRoute(page: FavoriteMap),
    ]),
  ],
  dependencies: [
    LazySingleton(classType: DialogService),
    Singleton(classType: NavigationService),
    Singleton(classType: RootViewModel),
    Singleton(classType: MarketNavigatorViewModel),
  ],
  logger: StackedLogger(),
)
class App {}
