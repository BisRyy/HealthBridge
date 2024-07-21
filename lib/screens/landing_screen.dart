import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 50), // Space from the top
              Image.asset(
                'assets/images/placeholder.png', // Your logo here
                height: 100,
              ),
              const SizedBox(height: 20), // Space between logo and title
              const Text(
                'CodeLight HealthBridge',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30), // Space between title and login options
              const LoginOptions(),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginOptions extends StatelessWidget {
  const LoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        LoginButton(
          text: 'Login with Email/Username',
          icon: Icons.email,
          color: Colors.blue,
          onPressed: () {
            // Navigate to the login screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),
        const SizedBox(height: 10),
        LoginButton(
          text: 'Login with Google',
          icon: FontAwesomeIcons.google,
          color: Colors.red,
          onPressed: () {
            // Handle Google login
          },
        ),
        const SizedBox(height: 10),
        LoginButton(
          text: 'Login with Apple',
          icon: FontAwesomeIcons.apple,
          color: Colors.black,
          onPressed: () {
            // Handle Apple login
          },
        ),
        const SizedBox(height: 10),
        LoginButton(
          text: 'Login with Facebook',
          icon: FontAwesomeIcons.facebook,
          color: Colors.blue[800]!,
          onPressed: () {
            // Handle Facebook login
          },
        ),
      ],
    );
  }
}

class LoginButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const LoginButton({super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white, backgroundColor: color,
        minimumSize: const Size(double.infinity, 50), // Full width button
      ),
      icon: Icon(icon, size: 18),
      label: Text(text),
      onPressed: onPressed,
    );
  }
}
