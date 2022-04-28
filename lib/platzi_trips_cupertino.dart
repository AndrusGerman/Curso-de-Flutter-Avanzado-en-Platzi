import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:platzi_trips_app/Place/ui/screens/home_trips.dart';
import 'package:platzi_trips_app/Place/ui/screens/search_trips.dart';
import 'package:platzi_trips_app/User/ui/screens/profile_trips.dart';

class PlatziTripsCupertino extends StatelessWidget {
  const PlatziTripsCupertino({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.indigo), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.indigo), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.indigo), label: ""),
        ]),
        tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
          }
          return const NotPage();
        },
      ),
    );
  }
}

class NotPage extends StatelessWidget {
  const NotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      color: Colors.green,
      child: const Text("No existe esta pagina"),
    );
  }
}
