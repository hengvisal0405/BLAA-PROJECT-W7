import 'package:my_app/data/dto/location_dto.dart';
import 'package:my_app/model/ride/ride_pref.dart';

class RidePreferenceDto {
  static Map<String, dynamic> toJson(RidePreference ridePreference) {
    return {
      'departure': LocationDto.toJson(ridePreference.departure),
      'departureDate': ridePreference.departureDate.toIso8601String(),
      'arrival': LocationDto.toJson(ridePreference.arrival),
      'requestedSeats': ridePreference.requestedSeats,
    };
  }

  static RidePreference fromJson(Map<String, dynamic> json) {
    return RidePreference(
      departure: LocationDto.fromJson(json['departure']),
      departureDate: DateTime.parse(json['departureDate']),
      arrival: LocationDto.fromJson(json['arrival']),
      requestedSeats: json['requestedSeats'],
    );
  }
}
