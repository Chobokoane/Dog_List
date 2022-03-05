import 'dart:async';

import 'package:dog_api/dog_list.dart';
import 'package:dog_api/dog_model.dart';
import 'package:dog_api/new_dog_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      title: 'We Rate Dogs',
      theme:  ThemeData(brightness: Brightness.dark),
      home:  MyHomePage(title: 'We Rate Dogs'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var initialDoggos = <Dog>[]
    ..add( Dog('Ruby', 'Portland, OR, USA',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add( Dog('Rex', 'Seattle, WA, USA', 'A Very Good Boy'))
    ..add( Dog('Rod Stewart', 'Prague, CZ', 'A Very Good Boy'))
    ..add( Dog('Herbert', 'Dallas, TX, USA', 'A Very Good Boy'))
    ..add( Dog('Buddy', 'North Pole, Earth', 'A Very Good Boy'));

  Future<Null> _showNewDogForm() async {
    Dog newDog = await Navigator.of(context).push(
       MaterialPageRoute(
        builder: (context) {
          return  AddDogFormPage();
        },
      ),
    );
    if (newDog != null) {
      initialDoggos.add(newDog);
    }
  }

  @override
  Widget build(BuildContext context) {
    var key =  GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      appBar:  AppBar(
        title:  Text(widget.title),
        actions: [
           IconButton(
            icon:  const Icon(Icons.add),
            onPressed: () => _showNewDogForm(),
          ),
        ],
      ),
      body:  Center(
        child:  DogList(initialDoggos),
      ),
    );
  }
}
