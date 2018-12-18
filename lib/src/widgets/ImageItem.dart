import 'package:flutter/material.dart';
import '../models/ImageModel.dart';

class ImageItem extends StatelessWidget {
  final ImageModel imageModel;

  ImageItem(this.imageModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Padding(
            child: Image.network(imageModel.url),
            padding: EdgeInsets.only(
                bottom: 8.0
            ),
          ),
          Text(imageModel.title),
        ],
      ),
    );
  }
}
