import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to Dashboard screen after login
            Navigator.pushReplacementNamed(context, '/dashboard');
          },
          child: Text('Login'),
        ),
      ),
    );
  }
}
