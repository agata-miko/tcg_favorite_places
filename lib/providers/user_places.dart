import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';
import 'package:tcg_favorite_places/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String name, File image) {
    final newPlace = Place(name: name, image: image);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
        (ref) => UserPlacesNotifier());
