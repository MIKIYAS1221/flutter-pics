import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Lets see some Images'),
          backgroundColor: Colors.blueGrey[900],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            counter++;
          }),
          backgroundColor: Colors.blueGrey[900],
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
