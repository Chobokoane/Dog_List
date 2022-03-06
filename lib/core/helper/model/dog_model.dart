import 'dart:async';
import 'dart:convert';

import 'dart:io';

class DogModel {
  final String name;
  final String description;
  String ?imageUrl;
  int rating = 10;

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
      print("Print from core.helper.model $imageUrl");
      imageUrl = url;

    } catch (exception) {
      print(exception);
    }
  }
}