import 'package:flutter/material.dart';

class TimelineWidget extends StatelessWidget {
  final List<Map<String, String>> visitedLocations;

  const TimelineWidget({super.key, required this.visitedLocations});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: visitedLocations.length,
      itemBuilder: (context, index) {
        final location = visitedLocations[index];
        return Column(
          children: [
            ListTile(
              leading: Icon(Icons.place, color: Colors.blue),
              title: Text(location['place'] ?? 'Unknown Place'),
              subtitle: Text(location['time'] ?? 'Unknown Time'),
            ),
            if (index < visitedLocations.length - 1)
              Container(
                margin: EdgeInsets.only(left: 20),
                height: 30,
                width: 2,
                color: Colors.grey,
              ),
          ],
        );
      },
    );
  }
}
