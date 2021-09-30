import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:greenie/pages/feed.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp();
  runApp(MaterialApp(
    title: 'Flutter Database Example',
    home: MyApp(app: app),
  ));
}



class MyApp extends StatefulWidget {
   MyApp({Key? key, required this.app}) : super(key: key);
  final FirebaseApp app;
  

  @override
  State<MyApp> createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  //final referenceDatabase = FirebaseDatabase.instance;
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home: Feed(),
    );
  }
}
