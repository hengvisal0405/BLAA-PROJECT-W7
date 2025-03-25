import 'package:flutter/material.dart';
import 'package:my_app/model/location/locations.dart';
import 'package:my_app/data/repository/locations_repository.dart';

class LocationProvider extends ChangeNotifier {
  final LocationsRepository? _repository;
  List<Location> _locations = [];
  Exception? _error;

  LocationProvider(this._repository);

  List<Location> get locations => _locations;
  Exception? get error => _error;

  Future<void> fetchLocations() async {
    try {
      _locations = await _repository!.getLocations();
      _error = null;
    } catch (e) {
      _error = e as Exception;
      _locations = [];
    }
    notifyListeners();
  }
}
