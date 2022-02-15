import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:timzy_mvvm/ui/market/result_map_viewmodel.dart';

class ResultMap extends StatelessWidget {
  const ResultMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ResultMapViewModel>.reactive(
        viewModelBuilder: ResultMapViewModel.new,
        disposeViewModel: false,
        fireOnModelReadyOnce: true,
        builder: (context, model, child) => Scaffold(
              body: Center(
                child: Text(model.title),
              ),
            ));
  }
}
