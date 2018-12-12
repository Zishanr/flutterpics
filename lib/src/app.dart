import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

// Custom widget with in build widgets.
class AppState extends State<App> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Let see some images!'),
        ),
        body: Text(
          '$counter times button got clicked',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          child: Icon(
            Icons.add,
          ),
        ),
      ),
    );
    ;
  }
}
