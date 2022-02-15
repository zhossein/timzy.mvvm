import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'market_viewmodel.dart';

class Market extends StatelessWidget {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MarketViewModel>.reactive(
        viewModelBuilder: MarketViewModel.new,
        disposeViewModel: false,
        fireOnModelReadyOnce: true,
        builder: (context, model, child) => Scaffold(
              body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(model.title),
                      ),
                      Center(
                        child: ElevatedButton(
                            onPressed: () => model.goToRoute(),
                            child: const Text('Go to Search')),
                      )
                    ]),
              ),
            ));
  }
}
