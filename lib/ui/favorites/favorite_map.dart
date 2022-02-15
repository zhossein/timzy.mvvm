import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:timzy_mvvm/ui/favorites/favorite_map_viewmodel.dart';
import 'favorites_viewmodel.dart';

class FavoriteMap extends StatelessWidget {
  const FavoriteMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FavoriteMapViewModel>.reactive(
        viewModelBuilder: FavoriteMapViewModel.new,
        disposeViewModel: false,
        fireOnModelReadyOnce: true,
        builder: (context, model, child) => Scaffold(
              body: Center(
                child: Text(model.title),
              ),
            ));
  }
}
