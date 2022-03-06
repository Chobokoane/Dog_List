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
    ..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Rex','A Very Good Boy'))
    ..add(DogModel('Rod Stewart','A Very Good Boy'))
    ..add(DogModel('Herbert',  'A Very Good Boy'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Rex','A Very Good Boy'))
    ..add(DogModel('Rod Stewart','A Very Good Boy'))
    ..add(DogModel('Herbert',  'A Very Good Boy'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Rex','A Very Good Boy'))
    ..add(DogModel('Rod Stewart','A Very Good Boy'))
    ..add(DogModel('Herbert',  'A Very Good Boy'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Rex','A Very Good Boy'))
    ..add(DogModel('Rod Stewart','A Very Good Boy'))
    ..add(DogModel('Herbert',  'A Very Good Boy'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Rex','A Very Good Boy'))
    ..add(DogModel('Rod Stewart','A Very Good Boy'))
    ..add(DogModel('Herbert',  'A Very Good Boy'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Rex','A Very Good Boy'))
    ..add(DogModel('Rod Stewart','A Very Good Boy'))
    ..add(DogModel('Herbert',  'A Very Good Boy'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Rex','A Very Good Boy'))
    ..add(DogModel('Rod Stewart','A Very Good Boy'))
    ..add(DogModel('Herbert',  'A Very Good Boy'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Rex','A Very Good Boy'))
    ..add(DogModel('Rod Stewart','A Very Good Boy'))
    ..add(DogModel('Herbert',  'A Very Good Boy'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Rex','A Very Good Boy'))
    ..add(DogModel('Rod Stewart','A Very Good Boy'))
    ..add(DogModel('Herbert',  'A Very Good Boy'))
    ..add(DogModel('Buddy', 'A Very Good Boy'))
    ..add(DogModel('Ruby',
        'Ruby is a very good girl. Yes: Fetch, loungin\'. No: Dogs who get on furniture.'))
    ..add(DogModel('Rex','A Very Good Boy'))
    ..add(DogModel('Rod Stewart','A Very Good Boy'))
    ..add(DogModel('Herbert',  'A Very Good Boy'))
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
            return const FormWidget();
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
