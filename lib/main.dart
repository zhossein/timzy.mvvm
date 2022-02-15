import 'package:flutter/material.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:timzy_mvvm/app/app.locator.dart';
import 'package:timzy_mvvm/app/app.router.dart';
import 'package:timzy_mvvm/services/logging_observer.dart';
import 'package:timzy_mvvm/services/my_route_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator(environment: Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [StackedService.routeObserver,LoggingObserver()],
      title: 'Timzy',
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

