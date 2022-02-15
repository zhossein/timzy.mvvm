import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:timzy_mvvm/ui/favorites/favorite_details_viewmodel.dart';

class FavoriteDetails extends StatelessWidget {
  const FavoriteDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavoriteDetailsViewModel>.reactive(
        viewModelBuilder: FavoriteDetailsViewModel.new,
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
                        child: const Text('Go to Favorites Map')),
                  )
                ]),
          ),
        ));
  }
}
