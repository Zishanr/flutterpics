import 'package:flutter/material.dart';
import 'package:http/http.dart'
    show
        get,
        Response; // Importing just get function from http package instead of whole package
import './models/ImageModel.dart';
import 'dart:convert'; // To get json object -> to convert raw data to json object.
import 'widgets/ImageList.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

// Custom widget with in build widgets.
class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = new List<ImageModel>();

  void fetchImage() async {
    counter++;
    Response response = await get(
        'https://jsonplaceholder.typicode.com/photos/$counter'); // The response will be raw data.
    ImageModel imageModel = new ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Let see some images!'),
        ),
        body: ImageList(
          images
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}
