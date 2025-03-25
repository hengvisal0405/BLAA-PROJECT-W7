import 'package:flutter/material.dart';
import 'package:my_app/provider/ride_pref_provider.dart';
import 'package:provider/provider.dart';
import '../../../model/ride/ride_filter.dart';
import 'widgets/ride_pref_bar.dart';
import '../../../model/ride/ride.dart';
import '../../../model/ride/ride_pref.dart';
import '../../../service/rides_service.dart';
import '../../theme/theme.dart';
import '../../../utils/animations_util.dart';
import 'widgets/ride_pref_modal.dart';
import 'widgets/rides_tile.dart';

///
///  The Ride Selection screen allows users to select a ride once ride preferences have been defined.
///  The screen also allows users to re-define the ride preferences and activate some filters.
///
class RidesScreen extends StatelessWidget {
  const RidesScreen({super.key});

  void onRidePrefSelected(BuildContext context, RidePreference newPreference) {
    // Call the provider's method to set the current preference
    Provider.of<RidesPreferencesProvider>(context, listen: false)
        .setCurrentPreferrence(newPreference);
  }

  void onBackPressed(BuildContext context) {
    Navigator.of(context).pop();
  }

  Future<void> onPreferencePressed(BuildContext context) async {
    // Access the current preferences from the provider
    final currentPreference =
        Provider.of<RidesPreferencesProvider>(context, listen: false)
            .currentPreference;

    // Open a modal to edit the ride preferences
    RidePreference? newPreference = await Navigator.of(
      context,
    ).push<RidePreference>(
      AnimationUtils.createTopToBottomRoute(
        RidePrefModal(initialPreference: currentPreference),
      ),
    );

    if (newPreference != null) {
      // Update the current preference in the provider
      onRidePrefSelected(context, newPreference);
    }
  }

  void onFilterPressed() {
    // Implement your filter logic here
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<RidesPreferencesProvider>(
      builder: (context, ridesPrefProvider, child) {
        final currentPreference = ridesPrefProvider.currentPreference!;
        final currentFilter =
            RideFilter(); // Adjust this if you have filter logic

        List<Ride> matchingRides =
            RidesService.instance.getRidesFor(currentPreference, currentFilter);

        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(
              left: BlaSpacings.m,
              right: BlaSpacings.m,
              top: BlaSpacings.s,
            ),
            child: Column(
              children: [
                // Top search Search bar
                RidePrefBar(
                  ridePreference: currentPreference,
                  onBackPressed: () => onBackPressed(context),
                  onPreferencePressed: () => onPreferencePressed(context),
                  onFilterPressed: onFilterPressed,
                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: matchingRides.length,
                    itemBuilder: (ctx, index) => RideTile(
                      ride: matchingRides[index],
                      onPressed: () {
                        // Implement onPressed logic for the ride tile
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
