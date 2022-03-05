import 'dart:async';

import 'package:flutter/material.dart';

import 'dog_model.dart';

class DogDetailPage extends StatefulWidget {
  final Dog dog;

  const DogDetailPage(this.dog, {Key? key}) : super(key: key);

  @override
  _DogDetailPageState createState() => _DogDetailPageState();
}

class _DogDetailPageState extends State<DogDetailPage> {
  double dogAvatarSize = 150.0;
  double _sliderValue = 10.0;

  Widget get dogImage {
    return  Hero(
      tag: widget.dog,
      child:  Container(
        height: dogAvatarSize,
        width: dogAvatarSize,
        constraints:  const BoxConstraints(),
        decoration:  BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
                offset: Offset(1.0, 2.0),
                blurRadius: 2.0,
                spreadRadius: -1.0,
                color: Color(0x33000000)),
            BoxShadow(
                offset: Offset(2.0, 1.0),
                blurRadius: 3.0,
                spreadRadius: 0.0,
                color: Color(0x24000000)),
            BoxShadow(
                offset: Offset(3.0, 1.0),
                blurRadius: 4.0,
                spreadRadius: 2.0,
                color: Color(0x1F000000)),
          ],
          image:  DecorationImage(
            fit: BoxFit.cover,
            image:  NetworkImage(widget.dog.imageUrl ??""),
          ),
        ),
      ),
    );
  }

  Widget get dogProfile {
    return  Container(
      padding:  const EdgeInsets.symmetric(vertical: 32.0),

      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          dogImage,
          Text(
            widget.dog.name ,
            style:  const TextStyle(fontSize: 32.0),
          ),
           Text(
            widget.dog.location,
            style:  const TextStyle(fontSize: 20.0),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child:  Text(widget.dog.description),
          ),
          rating
        ],
      ),
    );
  }

  Widget get rating {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
         const Icon(
          Icons.star,
          size: 40.0,
        ),
         Text(' ${widget.dog.rating} / 10',),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black87,
      appBar:  AppBar(
        backgroundColor: Colors.black87,
        title:  Text('Meet ${widget.dog.name}'),
      ),
      body:  ListView(
        children: <Widget>[dogProfile,],
      ),
    );
  }
}
