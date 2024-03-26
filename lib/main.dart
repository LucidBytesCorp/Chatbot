import 'package:flutter/material.dart';
import 'package:chatbot/Pages/login.dart';
import 'package:chatbot/Pages/mainpage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat bot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      //home: chatForm(),
      routes: {
        chatForm.route: (context) => const chatForm(),
      },
    );
  }
}
