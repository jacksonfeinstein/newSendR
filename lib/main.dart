import 'package:firebase_core/firebase_core.dart';
import 'package:first/Views/signin.dart';
import 'package:first/Views/edit_profile.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    home: SignIn(),
    );
  }
}