import 'package:flutter/material.dart';
import 'package:game_project/SingleSelection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Settings()
    );
  }
}

class Settings extends StatefulWidget {
   Settings({Key? key}) : super(key: key);



  @override
  SettingsView createState() => SettingsView();
}

class SettingsView extends State<Settings> {
  List<String> sortFilter = [
    'Sort by name A-Z',
    'Sort by release date',
    'Sort by Ratings',
    'Sort by Recently added'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingsView'),
      ),
      body: SingleSelection(sortFilter),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}