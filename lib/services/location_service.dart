
import '../models/location_model.dart';

class LocationService {
  // Simulate fetching today's visited locations
  Future<List<LocationModel>> fetchVisitedLocations(int memberId, DateTime date) async {
    await Future.delayed(Duration(seconds: 1)); // Simulate network delay

    return [
      LocationModel(
        latitude: 37.7749,
        longitude: -122.4194,
        placeName: 'Golden Gate Park',
        timestamp: DateTime(date.year, date.month, date.day, 9, 30),
      ),
      LocationModel(
        latitude: 37.7849,
        longitude: -122.4294,
        placeName: 'Union Square',
        timestamp: DateTime(date.year, date.month, date.day, 11, 15),
      ),
    ];
  }
}
