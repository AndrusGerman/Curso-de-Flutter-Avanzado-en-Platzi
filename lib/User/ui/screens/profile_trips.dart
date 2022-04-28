import 'package:flutter/material.dart';
import 'package:platzi_trips_app/User/ui/screens/profile_header.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_places_list.dart';
import 'package:platzi_trips_app/User/ui/widgets/profile_background.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ProfileBackground(),
        ListView(
          children: <Widget>[const ProfileHeader(), ProfilePlacesList()],
        ),
      ],
    );
  }
}
