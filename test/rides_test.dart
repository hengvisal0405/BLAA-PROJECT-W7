
import 'package:my_app/model/location/locations.dart';
import 'package:my_app/model/ride/ride.dart';
import 'package:my_app/model/ride/ride_pref.dart';
import 'package:my_app/repository/mock/mock_rides_repository.dart';
import 'package:my_app/service/rides_service.dart';

void main() {
  // 1 - Create a  ride services
  RidesService.initialize(MockRidesRepository());

  // FAKE LOCATIONS
  Location battambang = Location(name: "Battambang", country: Country.cambodia);

  Location siemReap = Location(name: "Siem Reap", country: Country.cambodia);

  // 2 - Create a ride preference
  RidePreference pref = RidePreference(
    departure: battambang,
    departureDate: DateTime.now(),
    arrival: siemReap,
    requestedSeats: 1,
  );

  List<Ride> availableRides = RidesService.instance.getRidesFor(pref, null);

  print(availableRides);
}
