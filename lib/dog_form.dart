import 'package:flutter/material.dart';

import 'dog_model.dart';

class DogForm extends StatefulWidget {
  @override
  _AddDogFormPageState createState() =>  _AddDogFormPageState();
}

class _AddDogFormPageState extends State<DogForm> {
  TextEditingController nameController =  TextEditingController();
  TextEditingController locationController =  TextEditingController();
  TextEditingController descriptionController =  TextEditingController();

  void submitPup(context) {
    if (nameController.text.isEmpty) {
      Scaffold.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.black,
          content: Text('Pups neeed names!', style: TextStyle(color: Colors.white)),
        ),
      );
    } else {
      var newDog =  Dog(nameController.text, locationController.text,
          descriptionController.text);
      Navigator.of(context).pop(newDog);
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.white,
      appBar:  AppBar(
        title: const Text('Add a new Dog',style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:  Container(
        color: Colors.grey,
        child:  Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 32.0,
          ),
          child:  Column(
            children: [
               Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child:  TextField(
                    controller: nameController,
                    decoration: const InputDecoration(

                      labelText: 'Name the Pup',
                    )),
              ),
               Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child:  TextField(
                    controller: locationController,
                    decoration: const InputDecoration(
                      labelText: "Pups location",
                    )),
              ),
               Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child:  TextField(
                    controller: descriptionController,
                    decoration: const InputDecoration(
                      labelText: 'All about the pup',
                    )),
              ),
               const SizedBox(
                 height:350,
               ),
               Padding(
                padding: const EdgeInsets.all(16.0),
                child:  Builder(
                  builder: (context) {
                    return  RaisedButton(
                      color: Colors.indigoAccent,
                      child: const Text('Submit '),
                      onPressed: () => submitPup(context),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}