import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/attendance_screen.dart';
import 'screens/route_screen.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(), // Home screen with the menu button
        '/attendance': (context) => AttendanceScreen(), // Attendance screen
        '/route': (context) => RouteScreen(), // Routes screen with the menu button
      },
    );
  }
}
