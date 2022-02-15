import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:timzy_mvvm/ui/my_shop/ad_details_viewmodel.dart';

class AdDetails extends StatelessWidget {
  const AdDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AdDetailsViewModel>.reactive(
        viewModelBuilder: AdDetailsViewModel.new,
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
                        child: const Text('Go to Modify Ad')),
                  )
                ]),
          ),
        ));
  }
}
