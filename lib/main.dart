import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:platzi_trips_app/User/bloc/bloc_user.dart';
import 'package:platzi_trips_app/platzi_trips.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Add Firebase api
  const auth = FirebaseOptions(
      apiKey: "appKey",
      appId: "cursos-de-flutter-avanzado",
      messagingSenderId: "messengerID",
      projectId: "cursos-de-flutter-avanzado");

  await Firebase.initializeApp(options: auth);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Screen Widget
    final screen = MaterialApp(
        title: 'Flutter Demo', theme: ThemeData(), home: const PlatziTrips());

    // Return Data
    return BlocProvider(
      bloc: UserBloc(),
      child: screen,
    );
  }
}
