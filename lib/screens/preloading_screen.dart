import 'package:code_light/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class PreloadingScreen extends StatefulWidget {
  const PreloadingScreen({super.key});

  @override
  _PreloadingScreenState createState() => _PreloadingScreenState();
}

class _PreloadingScreenState extends State<PreloadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LandingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(), // Adds flexible space at the top
            Image.asset(
              'assets/images/placeholder.png', // Your logo here
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            const Text(
              'HealthBridge AI Doctor',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Start chatting with ChattyAI Now.\nYou can ask me anything',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const Spacer(), // Adds flexible space at the bottom
            const Text(
              'V 0.0.01',
              style: TextStyle(
                fontSize: 14,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
