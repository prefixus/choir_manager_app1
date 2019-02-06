import 'package:choir_manager_app1/localizations.dart';
import 'package:choir_manager_app1/screens/account.dart';
import 'package:choir_manager_app1/screens/settings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  /// Returns Navigation Drawer
  Drawer getNavDrawer(BuildContext context) {
    var headerChild = DrawerHeader(child: Text("Header"));
    var aboutChild = AboutListTile(
        child: Text("About"),
        applicationName: "ChoirManager",
        applicationVersion: "v0.1.0",
        applicationIcon: Icon(Icons.chat));

    ListTile getNavItem(var icon, String text, String routeName) {
      return ListTile(
        leading: Icon(icon),
        title: Text(text),
        onTap: () {
          setState(() {
            Navigator.of(context).pop();
            Navigator.of(context).pushNamed(routeName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.settings, 'Settings', SettingsScreen.routeName),
      getNavItem(Icons.home, "Home", "/"),
      getNavItem(Icons.account_box, "Account", AccountScreen.routeName),
      aboutChild
    ];

    ListView listView = ListView(children: myNavChildren);

    return Drawer(
      child: listView,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer for Choir Manager"),
      ),
      body: Container(
          child: Center(
              child: Text(MyLocalizations
                  .of(context)
                  .title) // TODO: add stuff to home screen
          )),
      drawer: getNavDrawer(context),
    );
  }
}
