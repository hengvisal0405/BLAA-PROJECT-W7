import '../../model/ride/ride_pref.dart';
//2
abstract class RidePreferencesRepository {
  Future<List<RidePreference>> getPastPreferences();
  Future<void> addPreference(RidePreference preference);
}
