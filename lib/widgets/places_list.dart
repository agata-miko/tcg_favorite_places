import 'package:flutter/material.dart';
import 'package:tcg_favorite_places/models/place.dart';
import 'package:tcg_favorite_places/screens/place_details_screen.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    return (places.isEmpty)
        ? Center(
            child: Text('No places added yet',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground)),
          )
        : ListView.builder(
            itemCount: places.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(
                places[index].name,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PlaceDetailsScreen(
                      place: places[index],
                    ),
                  ),
                );
              },
            ),
          );
  }
}
