import 'package:flutter/material.dart';
import 'map_screen.dart';
import 'route_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> members = [
      {
        'name': 'Harsh Vardhan',
        'id': 1,
        'coordinates': LatLng(37.7749, -122.4194)
      }, // San Francisco
      {
        'name': 'Saksham Arya',
        'id': 2,
        'coordinates': LatLng(34.0522, -118.2437)
      }, // Los Angeles
      {
        'name': 'Kriti Jaiswal',
        'id': 3,
        'coordinates': LatLng(34.0522, -118.2437)
      }, // Los Angeles
      {
        'name': 'Mansi Garg',
        'id': 4,
        'coordinates': LatLng(34.0522, -118.2437)
      }, // Los Angeles
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Attendance',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.deepPurple,
        elevation: 8,
        shadowColor: Colors.purpleAccent,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.purpleAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: members.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            final member = members[index];

            return Card(
              elevation: 8,
              margin: const EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.deepPurple,
                  child: Text(
                    member['name'][0],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                title: Text(
                  member['name'] as String,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                trailing: Wrap(
                  spacing: 10,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.location_on,
                        color: Colors.redAccent,
                        size: 28,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MapScreen(
                              userName: member['name'],
                              userCoordinates: member['coordinates'],
                            ),
                          ),
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.map,
                        color: Colors.green,
                        size: 28,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RouteScreen(),
                            settings: RouteSettings(arguments: member),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
