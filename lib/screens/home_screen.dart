import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        shadowColor: Colors.purpleAccent,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.deepPurple, Colors.purpleAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              accountName: const Text(
                'Hello, User!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: const Text('Explore the Attendance App Menu'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 50, color: Colors.deepPurple),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.people, color: Colors.deepPurple),
              title: const Text(
                'Click on Attendance',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/attendance'); // Navigate to attendance screen
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.teal),
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                // Add navigation or functionality for settings
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color: Colors.red),
              title: const Text(
                'Logout',
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
              onTap: () {
                Navigator.pop(context); // Close the drawer or navigate elsewhere
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Vibrant Gradient Background
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0, -0.5),
                radius: 1.5,
                colors: [Colors.pinkAccent, Colors.deepPurple],
              ),
            ),
          ),
          // Foreground Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.location_on,
                  size: 140,
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Welcome to Attendance App!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black54,
                        offset: Offset(3, 3),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/attendance');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.purpleAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 15,
                    shadowColor: Colors.purpleAccent,
                  ),
                  child: const Text(
                    'Go to Attendance',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
