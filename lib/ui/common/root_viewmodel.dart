import 'package:stacked/stacked.dart';

class RootViewModel extends IndexTrackingViewModel {}


// TRASH CODE below

//   final Map<int, Widget> _cacheViews = {
//     0:  const MarketNavigator(),
//     1:  const MyShopNavigator(),
//     2:  const FavoritesNavigator()
//   };
//
//   Map<int, Widget> get cacheViews => _cacheViews;
//
//   int _currentIndex = 0;
//   int get currentIndex => _currentIndex;
//
//   bool _reverse = false;
//
//   /// Indicates whether we're going forward or backward in terms of the index we're changing.
//   /// This is very helpful for the page transition directions.
//   bool get reverse => _reverse;
//
//   void setIndex(int value) {
//     if (value < _currentIndex) {
//       _reverse = true;
//     } else {
//       _reverse = false;
//     }
//     _currentIndex = value;
//     notifyListeners();
//   }
//
//   bool isIndexSelected(int index) => _currentIndex == index;
//
// }


//   int _currentPageIndex = MARKET;
//
//   int get currentTabIndex => _currentPageIndex;
//
//   final Map<int, AppTab> _appTabs = {
//     MARKET: AppTab(
//       title: 'Market',
//       icon: const Icon(Icons.storefront),
//       child: const Market(),
//       initialRoute: Routes.market,
//       navigatorState: GlobalKey<NavigatorState>(),
//       scrollController: ScrollController(),
//     ),
//     MYSHOP: AppTab(
//       title: 'My Shop',
//       icon: const Icon(Icons.phone_android),
//       child: const MyShop(),
//       initialRoute: Routes.myShop,
//       navigatorState: GlobalKey<NavigatorState>(),
//       scrollController: ScrollController(),
//     ),
//     FAVORITES: AppTab(
//       title: 'Favorites',
//       icon: const Icon(Icons.bookmarks_outlined),
//       child: const Favorites(),
//       initialRoute: Routes.favorites,
//       navigatorState: GlobalKey<NavigatorState>(),
//       scrollController: ScrollController(),
//     ),
//   };
//
//   List<AppTab> get pages => _appTabs.values.toList();
//
//   AppTab? get currentPage => _appTabs[_currentPageIndex];
//
//   /// Set currently visible tab.
//   void setTab(int tab) {
//     if (tab == currentTabIndex) {
//       _scrollToStart();
//     } else {
//       _currentPageIndex = tab;
//       notifyListeners();
//     }
//   }
//
//   /// If currently displayed screen has given [ScrollController] animate it
//   /// to the start of scroll view.
//   void _scrollToStart() {
//     if (currentPage!.scrollController!.hasClients) {
//       currentPage!.scrollController!.animateTo(
//         0,
//         duration: const Duration(seconds: 1),
//         curve: Curves.easeInOut,
//       );
//     }
//   }
//
//   /// Provide this to [WillPopScope] callback.
//   Future<bool> onWillPop(BuildContext context) async {
//     final currentNavigatorState = currentPage!.navigatorState.currentState;
//
//     if (currentNavigatorState!.canPop()) {
//       currentNavigatorState.pop();
//       return false;
//     } else {
//       if (currentTabIndex != MARKET) {
//         setTab(MARKET);
//         notifyListeners();
//         return false;
//       } else {
//         // ignore: inference_failure_on_function_invocation
//         return true;
//       }
//     }
//   }
// }
//
// // await showDialog(
// // context: context,
// // builder: (context) => const WidgetExitAppDial(),
// // );
