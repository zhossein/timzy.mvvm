import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:timzy_mvvm/app/app.locator.dart';
import 'package:timzy_mvvm/services/market_navigator_viewmodel.dart';

class MarketNavigator extends StatelessWidget {
  const MarketNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MarketNavigatorViewModel>.reactive(
        viewModelBuilder: locator,
        disposeViewModel: false,
        builder: (context, model, child) => Scaffold(
              body: model.extendedNavigator,
            ));
  }
}
