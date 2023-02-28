import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'Models/images_model.dart';
import 'widgets/images_list.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  List<ImagesModel> images = [];
  void fetchImage() async {
    counter++;
    final response = await get(
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter'));
    final imageModel = ImagesModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImagesList(images: images),
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Lets see some Images'),
          backgroundColor: Colors.blueGrey[900],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          backgroundColor: Colors.blueGrey[900],
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
