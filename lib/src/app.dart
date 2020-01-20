import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/src/model/ImageModel.dart';
import 'package:http/http.dart' show get;
import '../src/widget/ImageList_Widget.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  final List<ImageModel> images = [];

  void fetchImage() async {
    counter++;
    final response =
        await get("https://jsonplaceholder.typicode.com/photos/$counter");
    setState(() {
      images.add(ImageModel.fromJson(json.decode(response.body)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //body of the app
        body: ImageList(images),
        //appbar of the app
        appBar: AppBar(
          title: Text("My Flutter App"),
        ),
        //floating action button
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
      ),
    );
  }
}
