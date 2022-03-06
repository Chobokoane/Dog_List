import 'package:cached_network_image/cached_network_image.dart';
import 'package:dog_api/ui/views/widget/app_colors.dart';
import 'package:flutter/material.dart';

import '../../core/helper/model/dog_model.dart';


class DetailPage extends StatefulWidget {
  final DogModel dogModel;

  const DetailPage(this.dogModel, {Key? key}) : super(key: key);

  @override
  _DogDetailPageState createState() => _DogDetailPageState();
}

class _DogDetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widgetBgColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const Text('Dog Details', style: TextStyle(color: widgetBgColor),),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(height:18),
        Container(
          decoration: BoxDecoration(
            color: widgetBgColor,
            border: Border.all(
              color: primaryColor,
              width: 2.0 ,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          margin: const EdgeInsets.only(left:15,right:15),
          width: 150.0,
          height: 250.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 150.0,
                height: 150.0,
                child: CachedNetworkImage(
                  imageUrl: widget.dogModel.imageUrl ?? "",
                  placeholder: (context, url) =>
                  const CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                  const Icon(Icons.error),
                ),
              ),
              Text(
                widget.dogModel.name,
                style: const TextStyle(fontSize: 32.0,color: textColorBlack),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 32.0, vertical: 16.0),
                child: Text(widget.dogModel.description),
              ),
            ],
          ),
        ),
      ],)
    );
  }
}
