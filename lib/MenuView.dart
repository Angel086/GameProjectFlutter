import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:game_project/Information.dart';
import 'package:game_project/Settings.dart';
import 'package:game_project/SingleSelection.dart';
import 'package:game_project/ViewCategory.dart';
import 'package:game_project/main.dart';

void main() {
  runApp(new MyApp());
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
        home: const Menu()
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);
  @override
  MenuView createState() => MenuView();
}

class MenuView extends State<Menu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter GridView"),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children:[
            InkWell(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Settings()));
              },
              child: Container(
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.settings, size: 30,
                      color: Colors.black,),
                    SizedBox(height: 10),
                    Text("Setting", style:
                    TextStyle(fontSize: 15, color: Colors.black87))
                  ],
                ),
              ),
            ),

            InkWell(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Information()));
              },
              child: Container(
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.info_sharp, size: 30,
                      color: Colors.black,),
                    SizedBox(height: 10),
                    Text("Infos", style:
                    TextStyle(fontSize: 15, color: Colors.black87))
                  ],
                ),
              ),
            ),

            InkWell(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Category()));
              },
              child: Container(
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.bar_chart_sharp, size: 30,
                      color: Colors.black,),
                    SizedBox(height: 10),
                    Text("Level Of Difficulties", style:
                    TextStyle(fontSize: 15, color: Colors.black87))
                  ],
                ),
              ),
            ),

            InkWell(
              onTap:() {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Category()));
              },
              child: Container(
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.video_call, size: 30,
                      color: Colors.black,),
                    SizedBox(height: 10),
                    Text("Tutorial", style:
                    TextStyle(fontSize: 15, color: Colors.black87))
                  ],
                ),
              ),
            ),
          ],
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
        )
    );
  }
}