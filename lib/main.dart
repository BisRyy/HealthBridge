import 'package:flutter/material.dart';
import 'screens/preloading_screen.dart';

void main() {
  runApp(const HealthcareDiagnosticsApp());
}

class HealthcareDiagnosticsApp extends StatelessWidget {
  const HealthcareDiagnosticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthcare Diagnostics',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PreloadingScreen(),
    );
  }
}
