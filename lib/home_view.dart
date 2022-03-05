import 'package:dog_api/dog_card.dart';
import 'package:dog_api/dog_model.dart';
import 'package:dog_api/dog_form.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({
    Key? key,
  }) : super(key: key);

  @override
  _HomeView createState() =>  _HomeView();
}

class _HomeView extends State<HomeView> {
  var initialDoggos = <Dog>[]
    ..add(Dog('Ruby', 'Portland, OR, USA',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(Dog('Rex', 'Seattle, WA, USA', 'A Very Good Boy'))
    ..add(Dog('Rod Stewart', 'Prague, CZ', 'A Very Good Boy'))
    ..add(Dog('Herbert', 'Dallas, TX, USA', 'A Very Good Boy'))
    ..add(Dog('Buddy', 'North Pole, Earth', 'A Very Good Boy'));

  @override
  Widget build(BuildContext context) {
    var key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Dog List",style:TextStyle(color: Colors.white,)),
        centerTitle: true,
      ),
      body: Center(
        child:  GridView.builder(
          itemCount: initialDoggos.length,
          itemBuilder: (context, index) => DogCard(initialDoggos[index]),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return DogForm();
          }));
        },
        child: const Icon(Icons.add, color: Colors.white, size: 29,),
        backgroundColor: Colors.blue,
        tooltip: 'Capture Picture',
        elevation: 5,
        splashColor: Colors.grey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
