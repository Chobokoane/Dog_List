import 'package:cached_network_image/cached_network_image.dart';
import 'package:dog_api/dog_model.dart';
import 'package:flutter/material.dart';

import 'dog_detail_page.dart';

class DogCard extends StatefulWidget {
  final Dog dog;

  const DogCard(this.dog, {Key? key}) : super(key: key);

  @override
  DogCardState createState() {
    return  DogCardState(dog);
  }
}

class DogCardState extends State<DogCard> {
  Dog dog;
  String? renderUrl;

  DogCardState(this.dog);

  @override
  void initState() {
    super.initState();
    renderDogPic();
  }

  void renderDogPic() async {
    await dog.getImageUrl();
    setState(() {
      renderUrl = dog.imageUrl;
      print("ImageUrl ${dog.imageUrl}");
    });
  }

  Widget get dogImage {
    var dogAvatar =   Hero(
      tag: dog,
      child:   SizedBox(
        width: 100.0,
        height: 100.0,
        child: CachedNetworkImage(
          imageUrl: renderUrl ?? "",
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );

    var placeholder =   Container(
        width: 100.0,
        height: 100.0,
        child:  const Text(
          'DOGGO',
          textAlign: TextAlign.center,
        ));

    var crossFade =  AnimatedCrossFade(
      firstChild: placeholder,
      secondChild: dogAvatar,
      crossFadeState: renderUrl == null
          ? CrossFadeState.showFirst
          : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 1000),
    );

    return crossFade;
  }

  Widget get dogCard {
    return  Positioned(
      right: 0.0,
      child:  Container(
        width: 290.0,
        height: 115.0,
        child:  Card(
          color: Colors.white,
          child:  Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 64.0,
            ),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                 Text(widget.dog.name,style: const TextStyle(color: Colors.black,)),
                 Text(widget.dog.location,style: const TextStyle(color: Colors.black,)),
                 Row(
                  children: <Widget>[
                    const Icon(
                      Icons.star,
                      color: Colors.black,
                    ),
                     Text(': ${widget.dog.rating} / 10')
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () => showDogDetailPage(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child:  SizedBox(
          height: 115.0,
          child:  Stack(
            children: <Widget>[
              dogCard,
               Positioned(top: 7.5, child: dogImage),
            ],
          ),
        ),
      ),
    );
  }

  showDogDetailPage() {
    Navigator.of(context).push( MaterialPageRoute(builder: (context) {
      return  DogDetailPage(dog);
    }));
  }
}
