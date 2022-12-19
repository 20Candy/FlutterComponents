import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    "Avatar",
    "Bunny",
    "Cat",
    "Dog",
    "Elephant",
    "Frog",
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 1'),
        ),
        body: ListView(children: [
          //extrar cada elemento de la lista y convertirlo en un widget
          ...options
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList(),
          Divider()
        ]));
  }
}
