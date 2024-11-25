import 'package:attendence/models/location_model.dart';

class RouteModel {
  final LocationModel startLocation;
  final LocationModel endLocation;
  final double distanceKm;
  final Duration travelDuration;

  RouteModel({
    required this.startLocation,
    required this.endLocation,
    required this.distanceKm,
    required this.travelDuration,
  });

  factory RouteModel.fromJson(Map<String, dynamic> json) {
    return RouteModel(
      startLocation: LocationModel.fromJson(json['startLocation']),
      endLocation: LocationModel.fromJson(json['endLocation']),
      distanceKm: json['distanceKm'],
      travelDuration: Duration(seconds: json['travelDuration']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'startLocation': startLocation.toJson(),
      'endLocation': endLocation.toJson(),
      'distanceKm': distanceKm,
      'travelDuration': travelDuration.inSeconds,
    };
  }
}
