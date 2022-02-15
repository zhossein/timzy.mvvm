import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'favorites_viewmodel.dart';

class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavoritesViewModel>.reactive(
        viewModelBuilder: FavoritesViewModel.new,
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
                        child: const Text('Go to Favorites Details')),
                  )
                ]),
          ),
        ));
  }
}
