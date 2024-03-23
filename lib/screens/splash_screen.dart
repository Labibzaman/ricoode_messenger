import 'package:flutter/material.dart';
import 'package:ricoode/screens/home_Screen.dart';
import 'package:ricoode/screens/login_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToHomeScreen();
  }

  void goToHomeScreen() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const LoginScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Ricoode Messenger'),
      ),
    );
  }
}
