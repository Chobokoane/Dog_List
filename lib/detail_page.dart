import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'dog_model.dart';

class DetailPage extends StatefulWidget {
  final Dog dog;

  const DetailPage(this.dog, {Key? key}) : super(key: key);

  @override
  _DogDetailPageState createState() => _DogDetailPageState();
}

class _DogDetailPageState extends State<DetailPage> {
  double dogAvatarSize = 150.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Dog Details', style: TextStyle(color: Colors.white),),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: dogAvatarSize,
                  width: dogAvatarSize,
                  child: CachedNetworkImage(
                    imageUrl: widget.dog.imageUrl ?? "",
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                Text(
                  widget.dog.name,
                  style: const TextStyle(fontSize: 32.0),
                ),
                Text(
                  widget.dog.location,
                  style: const TextStyle(fontSize: 20.0),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 32.0, vertical: 16.0),
                  child: Text(widget.dog.description),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
