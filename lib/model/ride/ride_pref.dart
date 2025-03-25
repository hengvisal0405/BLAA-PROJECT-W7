import '../location/locations.dart';

///
/// This model describes a ride preference.
/// A ride preference consists of the selection of a departure + arrival + a date and a number of passenger
///
class RidePreference {
  final Location departure;
  final DateTime departureDate;
  final Location arrival;
  final int requestedSeats;

  const RidePreference(
      {required this.departure,
      required this.departureDate,
      required this.arrival,
      required this.requestedSeats});
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RidePreference &&
        other.arrival == arrival &&
        other.departure == departure &&
        other.departureDate == departureDate &&
        other.requestedSeats == requestedSeats;
  }

  @override
  int get hashCode =>
      arrival.hashCode ^
      departure.hashCode ^
      departureDate.hashCode ^
      requestedSeats.hashCode;
}
