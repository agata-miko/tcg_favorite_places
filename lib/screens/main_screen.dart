import 'package:flutter/material.dart';

import 'package:tcg_favorite_places/models/place.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<Place> _places = [
     const Place(name: 'test1', id: '123',)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your places'), actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add),
        ),
      ]),
      body: (_places.isEmpty)
          ? Center(
              child: Text('No places yet',
                  style: TextStyle(color: Theme.of(context).highlightColor)),
            )
          : ListView.builder(
              itemCount: _places.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(_places[index].name),
              ),
            ),
    );
  }
}
