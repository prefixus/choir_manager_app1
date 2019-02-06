import 'package:choir_manager_app1/localizations.dart';
import 'package:choir_manager_app1/screens/account.dart';
import 'package:choir_manager_app1/screens/home.dart';
import 'package:choir_manager_app1/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(new MaterialApp(
    onGenerateTitle: (BuildContext context) =>
    MyLocalizations
        .of(context)
        .title,
    localizationsDelegates: [
      const MyLocalizationsDelegate(),
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: [
      const Locale('en', ''),
      const Locale('es', ''),
    ],
    debugShowCheckedModeBanner: false,
    home: new HomeScreen(), // route for home is '/' implicitly
    routes: <String, WidgetBuilder>{
      // define the routes
      SettingsScreen.routeName: (BuildContext context) => new SettingsScreen(),
      AccountScreen.routeName: (BuildContext context) => new AccountScreen(),
    },
  ));
}