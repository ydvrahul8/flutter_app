import 'package:flutter/material.dart';
import 'package:flutter_app/src/model/ImageModel.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildContainer(images[index]);
      },
    );
  }

  Widget buildContainer(ImageModel model) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 8.0),
            child: Image.network(model.url),
          ),
          Text(model.title),
        ],
      ),
    );
  }
}
