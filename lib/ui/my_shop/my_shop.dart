import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:timzy_mvvm/ui/my_shop/my_shop_viewmodel.dart';

class MyShop extends StatelessWidget {
  const MyShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MyShopViewModel>.reactive(
      viewModelBuilder: MyShopViewModel.new,
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
                      child: const Text('Go to Post Ad')),
                )
              ]),
        ),
      ));
  }
}
