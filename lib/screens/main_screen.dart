import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tcg_favorite_places/providers/user_places.dart';

import 'package:tcg_favorite_places/screens/add_place_screen.dart';
import 'package:tcg_favorite_places/widgets/places_list.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Your places'), actions: [
        IconButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const AddPlaceScreen()));
          },
          icon: const Icon(Icons.add),
        ),
      ]),
      body: PlacesList(
        places: userPlaces,
      ),
    );
  }
}
