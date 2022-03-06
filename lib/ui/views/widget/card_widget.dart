import 'package:cached_network_image/cached_network_image.dart';
import 'package:dog_api/core/helper/model/dog_model.dart';
import 'package:flutter/material.dart';

import '../detail_view.dart';
import 'app_colors.dart';

class CardWidget extends StatefulWidget {
  final DogModel dog;

  const CardWidget(this.dog, {Key? key}) : super(key: key);

  @override
  CardWidgetState createState() {
    return CardWidgetState(dog);
  }
}

class CardWidgetState extends State<CardWidget> {
  DogModel dog;

  String? renderUrl;

  CardWidgetState(this.dog);

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
        Navigator.pushNamed(context, "details",arguments:dog );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: SizedBox(
          height: 115.0,
          child: Stack(
            children: <Widget>[
              Positioned(top: 7.5, child: Container(
                decoration: BoxDecoration(
                  color: widgetBgColor,
                  border: Border.all(
                    color: primaryColor,
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
