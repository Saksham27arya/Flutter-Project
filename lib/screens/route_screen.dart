// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MemberRouteScreen extends StatelessWidget {
//   final Map<String, dynamic> routeData;

//   MemberRouteScreen({required this.routeData});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Route Details')),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: GoogleMap(
//               initialCameraPosition: CameraPosition(
//                 target: LatLng(37.7749, -122.4194),
//                 zoom: 12.0,
//               ),
//               polylines: {
//                 Polyline(
//                   polylineId: PolylineId('route'),
//                   points: [
//                     LatLng(37.7749, -122.4194),
//                     LatLng(37.7849, -122.4294),
//                   ],
//                   color: Colors.blue,
//                   width: 5,
//                 ),
//               },
//               markers: {
//                 Marker(
//                   markerId: MarkerId('start'),
//                   position: LatLng(37.7749, -122.4194),
//                   infoWindow: InfoWindow(title: 'Start Location'),
//                 ),
//                 Marker(
//                   markerId: MarkerId('stop'),
//                   position: LatLng(37.7849, -122.4294),
//                   infoWindow: InfoWindow(title: 'Stop Location'),
//                 ),
//               },
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Column(
//               children: [
//                 ListTile(
//                   title: Text('Start Location'),
//                   subtitle: Text(routeData['startLocation']),
//                 ),
//                 ListTile(
//                   title: Text('Stop Location'),
//                   subtitle: Text(routeData['endLocation']),
//                 ),
//                 ListTile(
//                   title: Text('Total Distance'),
//                   subtitle: Text(routeData['distance']),
//                 ),
//                 ListTile(
//                   title: Text('Total Duration'),
//                   subtitle: Text(routeData['duration']),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class RouteScreen extends StatelessWidget {
  const RouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> member = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final startLocation = LatLng(37.7749, -122.4194); // Replace with dynamic data from the member
    final stopLocation = LatLng(37.7949, -122.4394); // Replace with dynamic data from the member

    return Scaffold(
      appBar: AppBar(title: Text('Route - ${member['name']}')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Start Location: $startLocation'),
                Text('Stop Location: $stopLocation'),
                Text('Total KMs: 5.0'),
                Text('Total Duration: 30 min'),
              ],
            ),
          ),
          Expanded(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: startLocation,
                zoom: 14,
              ),
              markers: {
                Marker(markerId: MarkerId('start'), position: startLocation),
                Marker(markerId: MarkerId('stop'), position: stopLocation),
              },
              polylines: {
                Polyline(
                  polylineId: PolylineId('route'),
                  points: [startLocation, stopLocation],
                  color: Colors.blue,
                ),
              },
            ),
          ),
        ],
      ),
    );
  }
}
