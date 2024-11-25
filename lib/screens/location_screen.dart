// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MemberLocationScreen extends StatefulWidget {
//   final int memberId;

//   MemberLocationScreen({required this.memberId});

//   @override
//   _MemberLocationScreenState createState() => _MemberLocationScreenState();
// }

// class _MemberLocationScreenState extends State<MemberLocationScreen> {
//   DateTime selectedDate = DateTime.now();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Member Location'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.calendar_today),
//             onPressed: () async {
//               DateTime? pickedDate = await showDatePicker(
//                 context: context,
//                 initialDate: selectedDate,
//                 firstDate: DateTime(2020),
//                 lastDate: DateTime.now(),
//               );
//               if (pickedDate != null) {
//                 setState(() {
//                   selectedDate = pickedDate;
//                 });
//               }
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: GoogleMap(
//               initialCameraPosition: CameraPosition(
//                 target: LatLng(37.7749, -122.4194), // Example coordinates
//                 zoom: 14.0,
//               ),
//               markers: {
//                 Marker(
//                   markerId: MarkerId('current_location'),
//                   position: LatLng(37.7749, -122.4194),
//                 ),
//               },
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: ListView.builder(
//               itemCount: 5, // Replace with actual data count
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text('Visited Location $index'),
//                   subtitle: Text('Visited at: 10:00 AM'),
//                   onTap: () {
//                     Navigator.pushNamed(context, '/route', arguments: {
//                       'startLocation': 'Start $index',
//                       'endLocation': 'End $index',
//                       'distance': '10 KM',
//                       'duration': '20 mins',
//                     });
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }/

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final member = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(title: Text('Current Location - ${member['name']}')),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194), // Default location
          zoom: 14,
        ),
      ),
    );
  }
}
