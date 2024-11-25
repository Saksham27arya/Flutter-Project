import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/location_model.dart';

class MapService {
  // Generate route polyline
  List<LatLng> generateRoutePolyline(List<LocationModel> locations) {
    return locations.map((location) => LatLng(location.latitude, location.longitude)).toList();
  }

  // Calculate distance in kilometers (mocked for simplicity)
  double calculateDistanceKm(LocationModel start, LocationModel end) {
    return 5.0; // Replace with actual Haversine formula calculation if needed
  }

  // Calculate travel duration (mocked for simplicity)
  Duration calculateTravelDuration(LocationModel start, LocationModel end) {
    return Duration(minutes: 30); // Replace with dynamic calculation if needed
  }
}
