import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:timzy_mvvm/ui/my_shop/modify_ad_viewmodel.dart';

class ModifyAd extends StatelessWidget {
  const ModifyAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ModifyAdViewModel>.reactive(
        viewModelBuilder: ModifyAdViewModel.new,
        disposeViewModel: false,
        fireOnModelReadyOnce: true,
        builder: (context, model, child) => Scaffold(
              body: Center(
                child: Text(model.title),
              ),
            ));
  }
}
