import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:timzy_mvvm/app/app.locator.dart';
import 'package:timzy_mvvm/app/app.router.dart';

class ResultDetailsViewModel extends BaseViewModel {
  final String _title = 'This is the result details page';
  String get title => _title;
  final NavigationService _navigationService = locator<NavigationService>();

  Future<void> goToRoute() async {
    await _navigationService.navigateTo(MarketNavigatorRoutes.resultMap,id: 1);
  }
}

