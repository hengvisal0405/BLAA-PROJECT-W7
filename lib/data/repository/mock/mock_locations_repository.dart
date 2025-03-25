import '../../../model/location/locations.dart';
import '../locations_repository.dart';

class MockLocationsRepository extends LocationsRepository {
  final Location phnomPenh = const Location(
    name: "Phnom Penh",
    country: Country.cambodia,
  );
  final Location siemReap = const Location(
    name: "Siem Reap",
    country: Country.cambodia,
  );
  final Location sihanoukville = const  Location(
    name: "Sihanoukville",
    country: Country.cambodia,
  );
  final Location kampot = const  Location
  (name: "Kampot", country: Country.cambodia);
  final Location battambang = const Location(
    name: "Battambang",
    country: Country.cambodia,
  );
  final Location kohKong = const Location(
    name: "Koh Kong",
    country: Country.cambodia,
  );
  final Location kampongCham = const Location(
    name: "Kampong Cham",
    country: Country.cambodia,
  );
  final Location kampongSpeu = const Location(
    name: "Kampong Speu",
    country: Country.cambodia,
  );
  final Location kampongThom = const Location(
    name: "Kampong Thom",
    country: Country.cambodia,
  );
  final Location preahSihanouk = const Location(
    name: "Preah Sihanouk",
    country: Country.cambodia,
  );
  final Location takeo = const Location(
    name: "Takeo",
    country: Country.cambodia,
  );
  final Location pursat = const Location(
    name: "Pursat",
    country: Country.cambodia,
  );
  final Location ratanakiri = const Location(
    name: "Ratanakiri",
    country: Country.cambodia,
  );
  final Location stungTreng = const Location(
    name: "Stung Treng",
    country: Country.cambodia,
  );
  final Location kratie = const Location(
    name: "Kratie",
    country: Country.cambodia,
  );
  final Location mondulkiri = const Location(
    name: "Mondulkiri",
    country: Country.cambodia,
  );
  final Location banteayMeanchey = const Location(
    name: "Banteay Meanchey",
    country: Country.cambodia,
  );
  final Location oddarMeanchey = const Location(
    name: "Oddar Meanchey",
    country: Country.cambodia,
  );
  final Location preahVihear = const Location(
    name: "Preah Vihear",
    country: Country.cambodia,
  );
  final Location tbongKhmum = const Location(
    name: "Tbong Khmum",
    country: Country.cambodia,
  );

  @override
List<Location> getLocations() {
    return [
      phnomPenh,
      siemReap,
      sihanoukville,
      kampot,
      battambang,
      kohKong,
      kampongCham,
      kampongSpeu,
      kampongThom,
      preahSihanouk,
      takeo,
      pursat,
      ratanakiri,
      stungTreng,
      kratie,
      mondulkiri,
      banteayMeanchey,
      oddarMeanchey,
      preahVihear,
      tbongKhmum,
    ];
  }
}
