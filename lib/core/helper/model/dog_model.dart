import 'dart:async';
import 'dart:convert';

import 'dart:io';

import 'package:logger/logger.dart';

class DogModel {
  final String name;
  final String description;
  String ?imageUrl;

  DogModel(this.name,this.description);

  Future getImageUrl() async {
    if (imageUrl != null) {
      return;
    }
    // Get an Image
    HttpClient http =  HttpClient();
    try {
      var uri =  Uri.http('dog.ceo', '/api/breeds/image/random');
      var request = await http.getUrl(uri);
      var response = await request.close();
      var responseBody = await response.transform(utf8.decoder).join();
      var decoded = json.decode(responseBody);
      var url = decoded['message'];
      imageUrl = url;

    } catch (exception) {
      var logger = Logger(
        printer: PrettyPrinter(),
      );
      logger.d('Error! Try again');
    }
  }
}