import 'package:dog_api/core/helper/model/dog_model.dart';
import 'package:dog_api/ui/views/widget/app_colors.dart';
import 'package:dog_api/ui/views/widget/card_widget.dart';
import 'package:dog_api/ui/views/widget/form_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({
    Key? key,
  }) : super(key: key);

  @override
  _HomeView createState() =>  _HomeView();
}

class _HomeView extends State<HomeView> {
  var initialDoggos = <DogModel>[]
    ..add(DogModel('Affenpinscher',
        'The Affenpinscher: loyal, curious, and famously amusing; this almost-human toy dog is fearless'))
    ..add(DogModel('Afghan Hound','The Afghan Hound is an aloof and dignified aristocrat of sublime beauty.'))
    ..add(DogModel('Airedale Terrier','His size, strength, and unflagging spirit have earned the Airedale Terrier the nickname “The King'))
    ..add(DogModel('Akita',  'Akitas are muscular, double-coated dogs of ancient Japanese lineage famous'))
    ..add(DogModel('Alaskan Klee Kai', 'The Alaskan Klee Kai is a small-sized companion dog that is alert, energetic'))
    ..add(DogModel('Alaskan Malamute',
        'An immensely strong, heavy-duty worker of spitz type, the Alaskan Malamute'))
    ..add(DogModel('American Bulldog','American Bulldogs are a well-balanced athletic dog that demonstrate great strength, '))
    ..add(DogModel('American English Coonhound','These sleek and racy, lean but muscular hounds work dusk to dawn in pursuit of the wily '))
    ..add(DogModel('American Eskimo Dog',  'The American Eskimo Dog combines striking good looks with a quick and clever mind in a total'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Affenpinscher',
        'The Affenpinscher: loyal, curious, and famously amusing; this almost-human toy dog is fearless'))
    ..add(DogModel('Afghan Hound','The Afghan Hound is an aloof and dignified aristocrat of sublime beauty.'))
    ..add(DogModel('Airedale Terrier','His size, strength, and unflagging spirit have earned the Airedale Terrier the nickname “The King'))
    ..add(DogModel('Akita',  'Akitas are muscular, double-coated dogs of ancient Japanese lineage famous'))
    ..add(DogModel('Alaskan Klee Kai', 'The Alaskan Klee Kai is a small-sized companion dog that is alert, energetic'))
    ..add(DogModel('Alaskan Malamute',
        'An immensely strong, heavy-duty worker of spitz type, the Alaskan Malamute'))
    ..add(DogModel('American Bulldog','American Bulldogs are a well-balanced athletic dog that demonstrate great strength, '))
    ..add(DogModel('American English Coonhound','These sleek and racy, lean but muscular hounds work dusk to dawn in pursuit of the wily '))
    ..add(DogModel('American Eskimo Dog',  'The American Eskimo Dog combines striking good looks with a quick and clever mind in a total'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Affenpinscher',
        'The Affenpinscher: loyal, curious, and famously amusing; this almost-human toy dog is fearless'))
    ..add(DogModel('Afghan Hound','The Afghan Hound is an aloof and dignified aristocrat of sublime beauty.'))
    ..add(DogModel('Airedale Terrier','His size, strength, and unflagging spirit have earned the Airedale Terrier the nickname “The King'))
    ..add(DogModel('Akita',  'Akitas are muscular, double-coated dogs of ancient Japanese lineage famous'))
    ..add(DogModel('Alaskan Klee Kai', 'The Alaskan Klee Kai is a small-sized companion dog that is alert, energetic'))
    ..add(DogModel('Alaskan Malamute',
        'An immensely strong, heavy-duty worker of spitz type, the Alaskan Malamute'))
    ..add(DogModel('American Bulldog','American Bulldogs are a well-balanced athletic dog that demonstrate great strength, '))
    ..add(DogModel('American English Coonhound','These sleek and racy, lean but muscular hounds work dusk to dawn in pursuit of the wily '))
    ..add(DogModel('American Eskimo Dog',  'The American Eskimo Dog combines striking good looks with a quick and clever mind in a total'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Affenpinscher',
        'The Affenpinscher: loyal, curious, and famously amusing; this almost-human toy dog is fearless'))
    ..add(DogModel('Afghan Hound','The Afghan Hound is an aloof and dignified aristocrat of sublime beauty.'))
    ..add(DogModel('Airedale Terrier','His size, strength, and unflagging spirit have earned the Airedale Terrier the nickname “The King'))
    ..add(DogModel('Akita',  'Akitas are muscular, double-coated dogs of ancient Japanese lineage famous'))
    ..add(DogModel('Alaskan Klee Kai', 'The Alaskan Klee Kai is a small-sized companion dog that is alert, energetic'))
    ..add(DogModel('Alaskan Malamute',
        'An immensely strong, heavy-duty worker of spitz type, the Alaskan Malamute'))
    ..add(DogModel('American Bulldog','American Bulldogs are a well-balanced athletic dog that demonstrate great strength, '))
    ..add(DogModel('American English Coonhound','These sleek and racy, lean but muscular hounds work dusk to dawn in pursuit of the wily '))
    ..add(DogModel('American Eskimo Dog',  'The American Eskimo Dog combines striking good looks with a quick and clever mind in a total'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Affenpinscher',
        'The Affenpinscher: loyal, curious, and famously amusing; this almost-human toy dog is fearless'))
    ..add(DogModel('Afghan Hound','The Afghan Hound is an aloof and dignified aristocrat of sublime beauty.'))
    ..add(DogModel('Airedale Terrier','His size, strength, and unflagging spirit have earned the Airedale Terrier the nickname “The King'))
    ..add(DogModel('Akita',  'Akitas are muscular, double-coated dogs of ancient Japanese lineage famous'))
    ..add(DogModel('Alaskan Klee Kai', 'The Alaskan Klee Kai is a small-sized companion dog that is alert, energetic'))
    ..add(DogModel('Alaskan Malamute',
        'An immensely strong, heavy-duty worker of spitz type, the Alaskan Malamute'))
    ..add(DogModel('American Bulldog','American Bulldogs are a well-balanced athletic dog that demonstrate great strength, '))
    ..add(DogModel('American English Coonhound','These sleek and racy, lean but muscular hounds work dusk to dawn in pursuit of the wily '))
    ..add(DogModel('American Eskimo Dog',  'The American Eskimo Dog combines striking good looks with a quick and clever mind in a total'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Buddy', 'A Very Good Boy'));

  @override
  Widget build(BuildContext context) {
    var key = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      backgroundColor: widgetBgColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text("Dog List",style:TextStyle(color: widgetBgColor)),
        centerTitle: true,
      ),
      body: Card(
        child:  GridView.builder(
          itemCount: initialDoggos.length,
          itemBuilder: (context, index) => CardWidget(initialDoggos[index]),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return  FormWidget();
          }));
        },
        child: const Icon(Icons.add, color: widgetBgColor, size: 29,),
        backgroundColor: primaryColor,
        tooltip: 'Add Picture',
        elevation: 5,
        splashColor: widgetLightGreyColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
