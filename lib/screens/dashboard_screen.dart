import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Placeholder for further functionality
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Dashboard Button Pressed')),
            );
          },
          child: Text('Go to Dashboard'),
        ),
      ),
    );
  }
}
