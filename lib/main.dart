import 'package:firebase_core/firebase_core.dart';

import 'package:firebaseautheticationsample/view/splashscreen/splasgscreen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBRmqXUSUMcqpVgiW08FbP17iYTuF3i6Sc",
          appId: "1:365317921352:android:c5141c442e79d2a092167d",
          messagingSenderId: "",
          projectId: "firebasadatabaeapp",
          storageBucket: "firebasadatabaeapp.appspot.com"));
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Spalshscreen(),
    );
  }
}
