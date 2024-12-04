import 'package:flutter/material.dart';
import 'package:inventory_tracking_system/screens/login_screen.dart';
import 'package:inventory_tracking_system/screens/dashboard_screen.dart';
import 'package:inventory_tracking_system/screens/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Main entry point for the app
void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(360, 690), // Adjust this size to your design's reference
      minTextAdapt: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          title: 'Inventory Tracking',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          initialRoute: '/', // Start at SplashScreen
          routes: {
            '/': (context) => SplashScreen(),  // Initial route, shows splash screen
            '/login': (context) => LoginScreen(),  // Navigate to Login screen
            '/dashboard': (context) => DashboardScreen(), // Navigate to Dashboard screen
          },
        );
      },
    ),
  );
}

