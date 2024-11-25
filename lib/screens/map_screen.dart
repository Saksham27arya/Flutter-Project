import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  final String userName;
  final LatLng userCoordinates;

  const MapScreen({super.key, required this.userName, required this.userCoordinates});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$userName\'s Location')),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: userCoordinates,
          zoom: 14.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('userLocation'),
            position: userCoordinates,
            infoWindow: InfoWindow(title: userName),
          ),
        },
      ),
    );
  }
}
