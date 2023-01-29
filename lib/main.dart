import 'package:bus_ticketing_admin/screens/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyA9oRErfzlwcF7qOd3cRU_Ed8av5uIRog0",
    appId: "1:324995757513:web:041c7eb3c7301d8663a418",
    messagingSenderId: "324995757513",
    projectId: "bus-ticketing-c01a8",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
