import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:timzy_mvvm/app/app.locator.dart';
import 'package:timzy_mvvm/app/app.router.dart';

class ResultsViewModel extends BaseViewModel {
  final String _title = 'This is the result page';
  String get title => _title;
  final NavigationService _navigationService = locator<NavigationService>();

  Future<void> goToRoute() async {
    await _navigationService.navigateTo(MarketNavigatorRoutes.resultDetails,id: 1);
  }
}

