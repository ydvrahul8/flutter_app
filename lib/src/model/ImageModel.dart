import 'dart:convert';

class ImageModel {
  int id;
  String url;
  String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> parsedData) {
    id = parsedData['id'];
    url = parsedData['url'];
    title = parsedData['title'];
  }
}
