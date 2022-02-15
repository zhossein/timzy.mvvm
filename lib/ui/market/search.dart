import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:timzy_mvvm/ui/market/search_viewmodel.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SearchViewModel>.reactive(
        viewModelBuilder: SearchViewModel.new,
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
                        child: const Text('Go to Result ')),
                  )
                ]),
          ),
        ));
  }
}