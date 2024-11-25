class LocationModel {
  final double latitude;
  final double longitude;
  final String placeName;
  final DateTime timestamp;

  LocationModel({
    required this.latitude,
    required this.longitude,
    required this.placeName,
    required this.timestamp,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      latitude: json['latitude'],
      longitude: json['longitude'],
      placeName: json['placeName'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'placeName': placeName,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
