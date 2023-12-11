import 'package:flutter/material.dart';

class AddPlaceScreen extends StatelessWidget {
  const AddPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your places')),
      body: Column(mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
            child: TextFormField(
              initialValue: 'New place',
              maxLength: 80,
              onSaved: null,
            ),
          ),
          Container(
            constraints: const BoxConstraints(
              maxWidth: 150,
            ),
            child: ElevatedButton(
                onPressed: () {},
                child: const Center(
                  child: Row(
                    children: <Widget>[Icon(Icons.add), Text('Add place')],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
