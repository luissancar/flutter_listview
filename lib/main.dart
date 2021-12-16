// ignore_for_file: empty_constructor_bodies, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'lista.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyHomePage createState() => MyHomePage();
}

class MyHomePage extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter listview',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView"),
        ),
        body: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, position) {
            return Item(lista[position]);
          },
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  String item;

  Item(this.item) {}

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        item,
        textAlign: TextAlign.center,
      ),
      onTap: () {
        // ignore: avoid_print
        print("Pulsado $item");
      },
      onLongPress: () {
        // ignore: avoid_print
        print("Largo click $item");
      },
    );
  }
}
