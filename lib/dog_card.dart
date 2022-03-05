import 'package:cached_network_image/cached_network_image.dart';
import 'package:dog_api/dog_model.dart';
import 'package:flutter/material.dart';

import 'detail_page.dart';

class DogCard extends StatefulWidget {
  final Dog dog;

  const DogCard(this.dog, {Key? key}) : super(key: key);

  @override
  DogCardState createState() {
    return DogCardState(dog);
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return DetailPage(dog);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SizedBox(
          height: 115.0,
          child: Stack(
            children: <Widget>[
              Positioned(top: 7.5, child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.blue ,
                    width: 2.0 ,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 250.0,
                height: 180.0,
                child: CachedNetworkImage(
                  imageUrl: renderUrl ?? "",
                  placeholder: (context, url) => const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
