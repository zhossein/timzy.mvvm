import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:timzy_mvvm/app/app.locator.dart';
import 'package:timzy_mvvm/app/app.router.dart';
import 'package:timzy_mvvm/services/my_shop_navigator.dart';

class MyShopViewModel extends BaseViewModel {
  final String _title = 'This is my Shop page';
  String get title => _title;
  final NavigationService _navigationService = locator<NavigationService>();

  Future<void> goToRoute() async {
    await _navigationService.navigateTo(MyShopNavigatorRoutes.postAd,id: 2);
  }
}

