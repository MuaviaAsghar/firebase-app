import 'package:firebase_app/LoginScreen/LoginScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC1OHiYlJj8i4zF5YhKzFNYYFhAEEnPhoQ",
            authDomain: "authentication-app-2c256.firebaseapp.com",
            projectId: "authentication-app-2c256",
            storageBucket: "authentication-app-2c256.appspot.com",
            messagingSenderId: "947811698374",
            appId: "1:947811698374:web:4d13f934df6e736b6979c7",
            measurementId: "G-0YSVYG58KT"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
